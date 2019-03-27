shared_examples 'remember device' do
  it 'does not require 2FA on sign in' do
    user = remember_device_and_sign_out_user
    sign_in_user(user)

    expect(current_path).to eq(account_path)
  end

  it 'requires 2FA on sign in after expiration' do
    user = remember_device_and_sign_out_user

    days_to_travel = (Figaro.env.remember_device_expiration_hours_aal_1.to_i + 1).hours.from_now
    Timecop.travel days_to_travel do
      sign_in_user(user)

      expect_mfa_to_be_required_for_user(user)
    end
  end

  it 'requires 2FA on sign in after phone number is changed' do
    user = remember_device_and_sign_out_user

    # Ensure that at least 1 second has passed since last `remember device`
    sleep(1)

    sign_in_user(user)
    visit manage_phone_path
    fill_in 'user_phone_form_phone', with: '7032231000'
    click_button t('forms.buttons.submit.confirm_change')
    click_submit_default
    first(:link, t('links.sign_out')).click

    sign_in_user(user)

    expect_mfa_to_be_required_for_user(user)
  end

  it 'requires 2FA on sign in for another user' do
    first_user = remember_device_and_sign_out_user

    second_user = user_with_2fa

    # Sign in as second user and expect otp confirmation
    sign_in_user(second_user)
    expect_mfa_to_be_required_for_user(user)

    # Setup remember device as second user
    check :remember_device
    click_submit_default

    # Sign out second user
    first(:link, t('links.sign_out')).click

    # Sign in as first user again and expect otp confirmation
    sign_in_user(first_user)
    expect_mfa_to_be_required_for_user(user)
  end

  it 'redirects to an SP from the sign in page' do
    oidc_url = openid_connect_authorize_url(
      client_id: 'urn:gov:gsa:openidconnect:sp:server',
      response_type: 'code',
      acr_values: Saml::Idp::Constants::LOA1_AUTHN_CONTEXT_CLASSREF,
      scope: 'openid email',
      redirect_uri: 'http://localhost:7654/auth/result',
      state: SecureRandom.hex,
      nonce: SecureRandom.hex,
    )
    user = remember_device_and_sign_out_user

    IdentityLinker.new(
      user, 'urn:gov:gsa:openidconnect:sp:server'
    ).link_identity(verified_attributes: %w[email])

    visit oidc_url
    click_link t('links.sign_in')

    expect(page.response_headers['Content-Security-Policy']).
      to(include('form-action \'self\' http://localhost:7654'))

    sign_in_user(user)

    expect(current_url).to start_with('http://localhost:7654/auth/result')
  end

  def expect_mfa_to_be_required_for_user(user)
    expected_path = if TwoFactorAuthentication::PivCacPolicy.new(user).enabled?
                      login_two_factor_piv_cac_path
                    elsif TwoFactorAuthentication::WebauthnPolicy.new(user).enabled?
                      login_two_factor_webauthn_path
                    elsif TwoFactorAuthentication::AuthAppPolicy.new(user).enabled?
                      login_two_factor_authenticator_path
                    elsif TwoFactorAuthentication::BackupCodePolicy.new(user).enabled?
                      login_two_factor_backup_code_path
                    elsif TwoFactorAuthentication::PhonePolicy.new(user).enabled?
                      login_two_factor_path(otp_delivery_preference: :sms, reauthn: false)
                    end

    expect(page).to have_current_path(expected_path)
    visit account_path
    expect(page).to have_current_path(expected_path)
  end
end
