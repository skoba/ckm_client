require 'soap/wsdlDriver'
CKM_REPOSITORY = 'http://openehr.org/knowledge/services/ArchetypeFinderBean?wsdl'
module OpenEHR
  class CKMClient
    attr_reader :repository

    def initialize(repository=CKM_REPOSITORY)
      @repository = repository
    end

    def fetch(id)
      ckmws = SOAP::WSDLDriverFactory.new(@repository).create_rpc_driver
      ckmws.getArchetypeInADL(archetypeId: id).m_return
    end
  end
end
