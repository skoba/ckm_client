require 'spec_helper'

REPOSITORY = 'http://www.openehr.org/'
OPENEHR_REPOSITORY = 'http://openehr.org/ckm/services/ArchetypeFinderBean?wsdl'
ARCHETYPE_ID = 'openEHR-EHR-OBSERVATION.blood_pressure.v1'

module OpenEHR
  module CKMClient
    describe SOAPInterface do
      describe "#initialize" do
        context 'repository is assigned as constructor parameter' do
          let(:si) { OpenEHR::CKMClient::SOAPInterface.new(REPOSITORY) }
          
          it 'respoistory is REPOSITORY' do
            si.repository.should == REPOSITORY
          end
        end

        context 'Default repository is openEHR CKM repository' do
          let(:si) { OpenEHR::CKMClient::SOAPInterface.new }
          
          it 'default repository is openEHR ckm repository' do
            si.repository.should == OPENEHR_REPOSITORY
          end
        end
      end

      describe "#fetch" do
        let(:si) { OpenEHR::CKMClient::SOAPInterface.new }

        it 'fetch archetype by id' do
          si.fetch(ARCHETYPE_ID).should match /#{ARCHETYPE_ID}/
        end
      end
    end
  end
end
