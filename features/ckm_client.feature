Feature: CKM Client access CKM repository

  CKM(Clinical Knowledge Manager) is a repository of archetypes, which
  contains established clincal inforomation models maintained by the
  openEHR Project(http://www.openehr.org). This CKM client accesses
  and queries archetype to CKM(http://www.openehr.org/knowledge/) or
  others.

  Scenario: repository is assigned by constructor
    Given a CKM repository
    When I cunstruct CKM client instance with repository option
    Then CKM repository is assigned

  Scenario: repository is not assigned
    Given No repository assigned
    When I construct CKM client instance
    Then The openEHR official CKM is assigned as default
