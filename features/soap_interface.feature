Feature: CKM client access CKM repository via SOAP interface

  CKM(Clinical Knowledge Manager) is a repository of archetypes, which
  contains established clincal inforomation models maintained by the
  openEHR Project(http://www.openehr.org). This CKM client accesses
  and queries archetype to CKM(http://www.openehr.org/ckm/) or
  others by SOAP interface

  Scenario: repository is assigned by constructor
    Given a CKM repository
    When I cunstruct SOAP interface instance with repository option
    Then CKM repository is assigned

  Scenario: repository is not assigned
    Given No repository assigned
    When I construct SOAP interface instance
    Then The openEHR official CKM is assigned as default

  Scenario: fetch adl file by archetype ID
    Given archetype ID
    When I fetch adl file by archetype ID
    Then ID matched archetype should be retrieved

  Scenario: query archetype by partial ID
    Given partial archetype ID
    When I query archetype by partial ID
    Then Partially matched archetype list should be retrieved
