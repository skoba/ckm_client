CKM_REPOSITORY = 'http://openehr.org/ckm/services/ArchetypeFinderBean?wsdl'

module OpenEHR
  module CKMClient
    class SOAPInterface
      attr_reader :repository

      def initialize(repository=CKM_REPOSITORY)
        @repository = repository
      end
      
      def fetch(id)
        SOAPDriver.new(@repository).get_adl_by_id(id)
      end
      
      def search(partial_id)
        SOAPDriver.new(@repository).get_archetypes_by_partial_id(partial_id)
      end
    end
    
    class SOAPDriver
      def initialize(repository)
        @driver = SOAP::WSDLDriverFactory.new(repository).create_rpc_driver
      end
      
      def get_adl_by_id(id)
        @driver.getArchetypeInADL(archetypeId: id).m_return
      end
      
      def get_archetypes_by_partial_id(id)
        @driver.getArchetypeIdsFromPartialId(archetypeIdPart: id).m_return
      end
    end
  end
end
