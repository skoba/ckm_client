require 'spec_helper'

describe OpenEHR::CKMClient::CLI do
  let(:ckmc) { OpenEHR::CKMClient::CLI.new }
  let(:archetype_id) { 'openEHR-EHR-OBSERVATION.blood_match' }
  let(:target_file) { archetype_id + '.adl' }

  describe "#get" do
    it 'should get archetype from repository' do
      ckmc.get archetype_id
      expect { File.exists?(target_file)}.to be_true
    end

    after do
      File.delete target_file
    end
  end

  describe '#help' do
    it 'call help' do
      
    end
  end
end

