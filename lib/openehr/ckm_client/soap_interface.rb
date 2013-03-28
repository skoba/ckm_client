CKM_REPOSITORY = 'http://openehr.org/ckm/services/ArchetypeFinderBean?wsdl'
require 'savon'

module OpenEHR
  module CKMClient
    class SOAPInterface
      attr_reader :repository

      def initialize(repository=CKM_REPOSITORY)
        @repository = repository
      end
      
      def fetch(id)
        soap_driver(@repository).get_adl_by_id(id)
      end
      
      def search(partial_id)
        soap_driver(@repository).get_archetypes_by_partial_id(partial_id)
      end

      private
      def soap_driver(repository)
        SOAPDriver.new(repository)
      end
    end
    
    class SOAPDriver
      def initialize(repository)
        @driver = Savon.client(wsdl: repository)
      end
      
      def get_adl_by_id(id)
        response = @driver.call :get_archetype_in_adl, message: {archetypeId: id}
        response.body[:get_archetype_in_adl_response][:return]
      end
      
      def get_archetypes_by_partial_id(id) 
        response = @driver.call :get_archetype_ids_from_partial_id, message: {archetypeIdPart: id}
        response.body[:get_archetype_ids_from_partial_id_response][:return]
      end
    end
  end
end
