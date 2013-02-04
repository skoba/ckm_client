require 'spec_helper'

REPOSITORY = 'http://www.openehr.org/'
ARCHETYPE_ID = 'openEHR-EHR-OBSERVATION.blood_pressure.v1'

module OpenEHR
  describe CKMClient do
    describe "#initialize" do
      context 'repository is assigned as constructor parameter' do
        let(:ckmc) { OpenEHR::CKMClient.new(REPOSITORY) }
        
        it 'respoistory is REPOSITORY' do
          ckmc.repository.should == REPOSITORY
        end
      end
    end
  end
end
