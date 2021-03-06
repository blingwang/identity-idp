module Idv
  module Acuant
    class FakeLiveness
      GOOD_LIVENESS_DATA = {
        'LivenessResult': { 'Score': 99, 'LivenessAssessment': 'Live' },
        'Error': nil,
        'ErrorCode': nil,
        'TransactionId': '4a11ceed-7a54-45fa-9528-3945b51a1e23',
      }.freeze

      def liveness(_body)
        [true, GOOD_LIVENESS_DATA.to_json]
      end
    end
  end
end
