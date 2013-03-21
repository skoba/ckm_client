require 'spec_helper'

describe OpenEHR::CKMClient::SOAPInterface do
  let(:repository) { 'http://www.openehr.org/' }
  let(:openehr_repository) { 'http://openehr.org/ckm/services/ArchetypeFinderBean?wsdl' }
  let(:archetype_id){ 'openEHR-EHR-OBSERVATION.blood_pressure.v1' }

  describe "#initialize" do
    context 'repository is assigned as constructor parameter' do
      let(:si) { OpenEHR::CKMClient::SOAPInterface.new(repository) }

      it 'respoistory is repository' do
        si.repository.should == repository
      end
    end

    context 'Default repository is openEHR CKM repository' do
      let(:si) { OpenEHR::CKMClient::SOAPInterface.new }

      it 'default repository is openEHR ckm repository' do
        si.repository.should == openehr_repository
      end
    end
  end

  describe "#fetch" do
    let(:si) { OpenEHR::CKMClient::SOAPInterface.new }

    it 'fetch archetype by id' do
      si.fetch(archetype_id).should match /#{archetype_id}/
    end
  end
end
