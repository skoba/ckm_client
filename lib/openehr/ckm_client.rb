module OpenEHR
  class CKMClient
    attr_reader :repository

    def initialize(repository='http://openehr.org/knowledge/services/ArchetypeFinderBean?wsdl')
      @repository = repository
    end

    def fetch(id)
    end
  end
end
