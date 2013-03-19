OPENEHR_CKM = 'http://openehr.org/ckm/services/ArchetypeFinderBean?wsdl'

Given /^a CKM repository$/ do
  @repository = 'http://www.openehr.org/'
end

When /^I cunstruct SOAP interface instance with repository option$/ do
  @si = OpenEHR::CKMClient::SOAPInterface.new(@repository)
end

Then /^CKM repository is assigned$/ do
  @si.repository.should == @repository
end

Given /^No repository assigned$/ do
end

When /^I construct SOAP interface instance$/ do
  @si = OpenEHR::CKMClient::SOAPInterface.new
end

Then /^The openEHR official CKM is assigned as default$/ do
  @si.repository.should == OPENEHR_CKM
end

Given /^archetype ID$/ do
  @archetype_id = 'openEHR-EHR-OBSERVATION.blood_pressure.v1'
end

When /^I fetch adl file by archetype ID$/ do
  si = OpenEHR::CKMClient::SOAPInterface.new
  @adl_file = si.fetch(@archetype_id)
end

Then /^ID matched archetype should be retrieved$/ do
  @adl_file.should match /#{@ardchetype_id}/
end

Given /^partial archetype ID$/ do
  @partial_id = 'blood'
end

When /^I query archetype by partial ID$/ do
  @archetypes = OpenEHR::CKMClient::SOAPInterface.new.search(@partial_id)
end

Then /^Partially matched archetype list should be retrieved$/ do
  @archetypes.each do |archetype|
    archetype.should match /blood/
  end
end
