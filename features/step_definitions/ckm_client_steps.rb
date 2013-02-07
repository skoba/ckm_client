OPENEHR_CKM = 'http://openehr.org/knowledge/services/ArchetypeFinderBean?wsdl'
Given /^a CKM repository$/ do
  @repository = 'http://www.openehr.org/'
end

When /^I cunstruct CKM client instance with repository option$/ do
  @ckmc = OpenEHR::CKMClient.new(@repository)
end

Then /^CKM repository is assigned$/ do
  @ckmc.repository.should == @repository
end

Given /^No repository assigned$/ do
end

When /^I construct CKM client instance$/ do
  @ckmc = OpenEHR::CKMClient.new
end

Then /^The openEHR official CKM is assigned as default$/ do
  @ckmc.repository.should == OPENEHR_CKM
end

Given /^archetype ID$/ do
  @archetype_id = 'openEHR-EHR-OBSERVATION.blood_pressure.v1'
end

When /^I fetch adl file by archetype ID$/ do
  ckmc = OpenEHR::CKMClient.new
  @adl_file = ckmc.fetch(@archetype_id)
end

Then /^ID matched archetype should be retrieved$/ do
  @adl_file.should match /#{@ardchetype_id}/
end

Given /^partial archetype ID$/ do
  @partial_id = 'blood'
end

When /^I query archetype by partial ID$/ do
  @archetypes = OpenEHR::CKMClient.new.search(@partial_id)
end

Then /^Partially matched archetype list should be retrieved$/ do
  @archetypes.each do |archetype|
    archetype.should match /blood/
  end
end
