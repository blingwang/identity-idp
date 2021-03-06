module Idv
  module Acuant
    class FakeAssureId
      # rubocop:disable all
      FAKE_DATA = {'Result' => 1, "Fields"=>[{"DataFieldReferences"=>["408b3e9e-a9b8-413e-8357-309b1596077c", "3f57da6d-bd97-4ff3-80b1-85263731bd5f"], "DataSource"=>2, "Description"=>"The residence address of the bearer of the document.", "Id"=>"9fed25c7-9e1b-4b36-b7a3-6750d16855cb", "IsImage"=>false, "Key"=>"Address", "Name"=>"Address", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"1 FAKE RD\u2028GREAT FALLS, MT 59010"}, {"DataFieldReferences"=>["410aad46-b2d9-4988-b525-ba6cde88b33e"], "DataSource"=>2, "Description"=>"The bearer's city of residence.", "Id"=>"a4615b1d-5fac-4dba-978a-2f4e1dc407ec", "IsImage"=>false, "Key"=>"Address City", "Name"=>"Address City", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"GREAT FALLS"}, {"DataFieldReferences"=>["9ba08fb4-d59e-43e0-93dc-7d565e784d49"], "DataSource"=>2, "Description"=>"The first line of the bearer's residence address.", "Id"=>"7aa2330c-499e-4900-804b-157b3ca0fc0b", "IsImage"=>false, "Key"=>"Address Line 1", "Name"=>"Address Line 1", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"1 FAKE RD"}, {"DataFieldReferences"=>["d663b9c0-6bf6-447a-9b26-5f1bd863b94c"], "DataSource"=>2, "Description"=>"The postal code of the bearer's address.", "Id"=>"5d76df49-7db3-4e39-9829-22eefd9b5e01", "IsImage"=>false, "Key"=>"Address Postal Code", "Name"=>"Address Postal Code", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"59010"}, {"DataFieldReferences"=>["13de8a97-baba-430a-8d77-7455dc75299a"], "DataSource"=>2, "Description"=>"The bearer's state of residence.", "Id"=>"06ebee65-0be2-403a-a18b-09e515bb8a5e", "IsImage"=>false, "Key"=>"Address State", "Name"=>"Address State", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"MT"}, {"DataFieldReferences"=>["fa9fe5c0-2d07-4c13-b851-a8c43b21760a", "c8df1582-8977-410f-9cd2-c6753b8a63a0"], "DataSource"=>2, "Description"=>"The date of birth of the bearer.", "Id"=>"22d99783-d5c2-4791-b2df-c43bf228e0d0", "IsImage"=>false, "Key"=>"Birth Date", "Name"=>"Birth Date", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"datetime", "Value"=>"/Date(-985824000000)/"}, {"DataFieldReferences"=>[], "DataSource"=>7, "Description"=>"A name indicating the general type of the document.", "Id"=>"fcabb637-0c2e-4c52-a5eb-4df7ddea58c7", "IsImage"=>false, "Key"=>"Document Class Name", "Name"=>"Document Class Name", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"Drivers License"}, {"DataFieldReferences"=>["84bcfcdf-86c0-4ba1-b10b-473838184960", "e5f55535-8e1c-47b2-8c67-fd5485fcf999"], "DataSource"=>2, "Description"=>"The document's identifying number.", "Id"=>"2c737ae7-5080-4812-aaa6-fe1bb903c261", "IsImage"=>false, "Key"=>"Document Number", "Name"=>"Document Number", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"1111111111111"}, {"DataFieldReferences"=>["780dd3e1-b70b-4f4f-8ff9-2f645534c85c", "7ed24025-ed03-46a7-a427-f74082d4f7b6"], "DataSource"=>2, "Description"=>"The date of expiration of the document.", "Id"=>"6eacda7e-e317-47e5-979f-7fa57ae2df36", "IsImage"=>false, "Key"=>"Expiration Date", "Name"=>"Expiration Date", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"datetime", "Value"=>"/Date(1599264000000)/"}, {"DataFieldReferences"=>["76015f49-e387-403a-a8a6-0b8ec2bc382a", "67776400-edb1-4fdf-9b82-7d35f92ccb65"], "DataSource"=>2, "Description"=>"The eye color of the bearer of the document.", "Id"=>"d148556a-4eec-48b6-bbc9-01c41e942a08", "IsImage"=>false, "Key"=>"Eye Color", "Name"=>"Eye Color", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"BLACK"}, {"DataFieldReferences"=>["537ea9f4-b27a-47c2-ba54-9641545244ce"], "DataSource"=>2, "Description"=>"The first name of the bearer of the document.", "Id"=>"5bf72eb0-263d-4dea-ab3a-eb7597dfc4d3", "IsImage"=>false, "Key"=>"First Name", "Name"=>"First Name", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"FAKEY"}, {"DataFieldReferences"=>["024100fd-d074-4d19-87c4-8da3efb4046c", "8416f826-b1eb-43b0-b573-2c11e5f1b080"], "DataSource"=>2, "Description"=>"The full name (given name plus surname) of the bearer of the document.", "Id"=>"cacae480-ef39-4e11-8b21-e11b0f2636ba", "IsImage"=>false, "Key"=>"Full Name", "Name"=>"Full Name", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"FAKEY MCFAKERSON"}, {"DataFieldReferences"=>["c2304e29-0ec7-4557-b61f-d75161a697a0", "f54ee727-d193-4798-ba15-fb6d93138c01"], "DataSource"=>2, "Description"=>"The given name of the bearer of the document.", "Id"=>"26cc87fc-5286-4926-b837-dc38838df6fb", "IsImage"=>false, "Key"=>"Given Name", "Name"=>"Given Name", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"FAKEY"}, {"DataFieldReferences"=>["7435036b-2573-400f-80c9-a7e485b0f495", "cbca0558-dc3d-45de-a933-ece1d8f48cd4"], "DataSource"=>2, "Description"=>"The height of the bearer of the document.", "Id"=>"87bca3f8-c81c-416b-b016-1fe0577dfefb", "IsImage"=>false, "Key"=>"Height", "Name"=>"Height", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"6' 11\""}, {"DataFieldReferences"=>["de13ab78-cff3-4166-be2e-e71a10566805", "d63c1fcc-3d9b-4bd0-b69d-b093c53ec72d"], "DataSource"=>2, "Description"=>"The date the document was issued.", "Id"=>"88253b4d-8964-4013-b1bb-2efa7dd3c9fb", "IsImage"=>false, "Key"=>"Issue Date", "Name"=>"Issue Date", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"datetime", "Value"=>"/Date(1441411200000)/"}, {"DataFieldReferences"=>["8c8e1b31-bce8-4561-8eac-51fa3c7eb63a"], "DataSource"=>7, "Description"=>"The three-letter code of the issuer.", "Id"=>"2c36ec64-c365-4617-ae5a-c31c65fb28de", "IsImage"=>false, "Key"=>"Issuing State Code", "Name"=>"Issuing State Code", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"MT"}, {"DataFieldReferences"=>["d6db9dfd-587c-4289-848e-7b76e2c8b5ac"], "DataSource"=>7, "Description"=>"The name of the issuer.", "Id"=>"d8f1eb4e-046b-4475-8662-06186f3603de", "IsImage"=>false, "Key"=>"Issuing State Name", "Name"=>"Issuing State Name", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"Montana"}, {"DataFieldReferences"=>["faaa2435-5ec0-4ec1-b919-8c96dbc2f9b0"], "DataSource"=>2, "Description"=>"The class of a license document varies by issuer.", "Id"=>"ea95200c-c47b-41d5-a12d-93581dac8907", "IsImage"=>false, "Key"=>"License Class", "Name"=>"License Class", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"D"}, {"DataFieldReferences"=>["406ed9c2-3162-4d31-851c-3e075aa4fcea"], "DataSource"=>2, "Description"=>"The endorsements of the license.", "Id"=>"976b84d3-c4d9-4284-ac79-a249c3620298", "IsImage"=>false, "Key"=>"License Endorsements", "Name"=>"License Endorsements", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"YES"}, {"DataFieldReferences"=>["c83095a6-f8eb-40ca-8ee3-d294671f7b98"], "DataSource"=>2, "Description"=>"The restrictions on the use of the license vary by issuer.", "Id"=>"1f67031d-401e-4d5d-8b60-ad5b9f1227cb", "IsImage"=>false, "Key"=>"License Restrictions", "Name"=>"License Restrictions", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"YES"}, {"DataFieldReferences"=>["1cd51306-5aea-4b86-b09b-bcec1a9cefbc"], "DataSource"=>2, "Description"=>"The middle name of the bearer of the document.", "Id"=>"b29b9b1a-f636-4550-85d1-9a5a0f3a14b0", "IsImage"=>false, "Key"=>"Middle Name", "Name"=>"Middle Name", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>""}, {"DataFieldReferences"=>["bde1c9e7-e5c1-4889-9925-ff980ff397d4"], "DataSource"=>2, "Description"=>"The name suffix of the bearer of the document.", "Id"=>"961d69a4-b9b3-40d1-97bf-b74a68171d4f", "IsImage"=>false, "Key"=>"Name Suffix", "Name"=>"Name Suffix", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>""}, {"DataFieldReferences"=>["08b8bb03-e9fc-4a2d-9001-c6ac29aad6af"], "DataSource"=>6, "Description"=>"An image of the bearer of the document.", "Id"=>"8444e133-3667-4369-8dfc-60fc0c290b04", "IsImage"=>true, "Key"=>"Photo", "Name"=>"Photo", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"uri", "Value"=>"https://services.assureid.net/AssureIDService/Document/3899aab2-1da7-4e64-8c31-238f279663fc/Field/Image?key=Photo"}, {"DataFieldReferences"=>["829fc162-bd1a-4805-a506-d569eaabb2ef", "0ca24ca1-e5f9-4819-97ee-a5308dac1bff"], "DataSource"=>2, "Description"=>"The gender of the bearer of the document.", "Id"=>"c40cb3fd-ad4f-4242-a0eb-1e62a22d0423", "IsImage"=>false, "Key"=>"Sex", "Name"=>"Sex", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"F"}, {"DataFieldReferences"=>["221aee71-66a8-45b9-acd4-f7f1f29d3e9b"], "DataSource"=>6, "Description"=>"An image of the document holder's signature.", "Id"=>"391cd7e5-c800-4071-ad9a-a5cfb6bd7d4c", "IsImage"=>true, "Key"=>"Signature", "Name"=>"Signature", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"uri", "Value"=>"https://services.assureid.net/AssureIDService/Document/3899aab2-1da7-4e64-8c31-238f279663fc/Field/Image?key=Signature"}, {"DataFieldReferences"=>["5f8bebe3-fef2-495f-9afb-d00695e808c8", "edeb0e41-fba2-41c1-b3c9-8f463cff6a7d"], "DataSource"=>2, "Description"=>"The surname or family name of the bearer of the document.", "Id"=>"7bec55dc-43d9-4a8b-bf57-c1d5a035f70b", "IsImage"=>false, "Key"=>"Surname", "Name"=>"Surname", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"MCFAKERSON"}, {"DataFieldReferences"=>["ba3544f2-5fb7-45c5-b054-ed48dbd76e49", "f66b34d5-dd65-47da-becf-4d5e356fdd5d"], "DataSource"=>2, "Description"=>"The weight of the bearer of the document.", "Id"=>"55c8087f-5a2d-4b35-98a7-b379e6c5ebe7", "IsImage"=>false, "Key"=>"Weight", "Name"=>"Weight", "RegionReference"=>"00000000-0000-0000-0000-000000000000", "Type"=>"string", "Value"=>"99"}]}
      GOOD_LIVENESS_DATA = {'LivenessResult':{'Score':99,'LivenessAssessment':'Live'},'Error':nil,'ErrorCode':nil,'TransactionId':'4a11ceed-7a54-45fa-9528-3945b51a1e23'}
      BAD_LIVENESS_DATA = {'LivenessResult':{'Score':99,'LivenessAssessment':'Not Live'},'Error':nil,'ErrorCode':nil,'TransactionId':'4a11ceed-7a54-45fa-9528-3945b51a1e23'}
      FACEMATCH_DATA = { IsMatch: true }
      # rubocop:enable
      include Idv::Acuant::Http

      base_uri Figaro.env.acuant_assure_id_url

      FRONT = 0
      BACK = 1

      attr_accessor :instance_id

      def initialize
        @instance_id = '3899aab2-1da7-4e64-8c31-238f279663fc'
      end

      def document
        [true, FAKE_DATA.to_json]
      end

      def classification
      end

      def subscriptions
      end

      def create_document
        [true, @instance_id]
      end

      def post_image(_image, _side)
        [true, '']
      end

      def post_front_image(_image)
        [true, '']
      end

      def post_back_image(_image)
        [true, { 'Result' => 1 }]
      end

      def face_image
        [true, 'foo']
      end

      def liveness(body)
        return [false, ''] if body == 'network-error'
        data = JSON.parse(body)['Image']=='live-selfie' ? GOOD_LIVENESS_DATA : BAD_LIVENESS_DATA
        [true, data.to_json]
      end

      def results
        [true, FAKE_DATA]
      end

      def facematch(_body)
        [true, FACEMATCH_DATA.to_json]
      end
    end
  end
end
