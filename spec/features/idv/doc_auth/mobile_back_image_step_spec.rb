require 'rails_helper'

shared_examples 'doc auth mobile back image step' do |simulate|
  feature 'doc auth mobile back image step' do
    include IdvStepHelper
    include DocAuthHelper

    before do
      setup_acuant_simulator(enabled: simulate)
      sign_in_and_2fa_user
      complete_doc_auth_steps_before_mobile_back_image_step
      mock_assure_id_ok
    end

    it 'is on the correct page' do
      expect(page).to have_current_path(idv_doc_auth_mobile_back_image_step)
      expect(page).to have_content(t('doc_auth.headings.take_pic_back'))
    end

    it 'proceeds to the next page with valid info' do
      attach_image
      click_idv_continue

      expect(page).to have_current_path(idv_doc_auth_ssn_step)
    end

    it 'allows the use of a base64 encoded data url representation of the image' do
      unless simulate
        assure_id = Idv::Acuant::AssureId.new
        expect(Idv::Acuant::AssureId).to receive(:new).and_return(assure_id)
        expect(assure_id).to receive(:post_back_image).
          with(doc_auth_image_data_url_data).
          and_return([true, ''])
      end

      attach_image_data_url
      click_idv_continue

      expect(page).to have_current_path(idv_doc_auth_ssn_step)
    end

    it 'proceeds to the next page if the user does not have a phone' do
      user = create(:user, :with_authentication_app, :with_piv_or_cac)
      sign_in_and_2fa_user(user)
      complete_doc_auth_steps_before_mobile_back_image_step
      attach_image
      click_idv_continue

      expect(page).to have_current_path(idv_doc_auth_ssn_step)
    end

    it 'does not proceed to the next page with invalid info' do
      allow_any_instance_of(Idv::Acuant::AssureId).to receive(:post_back_image).
        and_return([false, ''])
      attach_image
      click_idv_continue

      expect(page).to have_current_path(idv_doc_auth_mobile_back_image_step) unless simulate
    end

    it 'does not proceed to the next page with result=2' do
      allow_any_instance_of(Idv::Acuant::AssureId).to receive(:results).
        and_return([true, assure_id_results_with_result_2])
      attach_image
      click_idv_continue

      unless simulate
        expect(page).to have_current_path(idv_doc_auth_mobile_front_image_step)
        expect(page).to have_content(I18n.t('errors.doc_auth.general_error'))
        expect(page).to have_content(strip_tags(I18n.t('errors.doc_auth.general_info'))[0..32])
      end
    end
  end
end

feature 'doc auth back image' do
  it_behaves_like 'doc auth mobile back image step', false
  it_behaves_like 'doc auth mobile back image step', true
end
