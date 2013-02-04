ARCHETYPE_ID = 'openEHR-EHR-OBSERVATION.blood_pressure.v1'

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
  @ckmc.repository.should == 'http://openehr.org/knowledge/services/ArchetypeFinderBean?wsdl'
end
