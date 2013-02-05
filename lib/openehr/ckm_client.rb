require 'soap/wsdlDriver'
CKM_REPOSITORY = 'http://openehr.org/knowledge/services/ArchetypeFinderBean?wsdl'
module OpenEHR
  class CKMClient
    attr_reader :repository

    def initialize(repository=CKM_REPOSITORY)
      @repository = repository
    end

    def fetch(id)
      SOAPDriver.new(@repository).get_adl_by_id(id)
    end
  end

  class SOAPDriver
    def initialize(repository)
      @driver = SOAP::WSDLDriverFactory.new(repository).create_rpc_driver
    end

    def get_adl_by_id(id)
      @driver.getArchetypeInADL(archetypeId: id).m_return
    end
  end
end
