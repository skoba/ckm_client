require 'spec_helper'

REPOSITORY = 'http://www.openehr.org/'
OPENEHR_REPOSITORY = 'http://openehr.org/ckm/services/ArchetypeFinderBean?wsdl'
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

      context 'Default repository is openEHR CKM repository' do
        let(:ckmc) { OpenEHR::CKMClient.new }

        it 'default repository is openEHR ckm repository' do
          ckmc.repository.should == OPENEHR_REPOSITORY
        end
      end
    end

    describe "#fetch" do
      let(:ckmc) { OpenEHR::CKMClient.new }

      it 'fetch archetype by id' do
        ckmc.fetch(ARCHETYPE_ID).should match /#{ARCHETYPE_ID}/
      end
    end
  end
end
