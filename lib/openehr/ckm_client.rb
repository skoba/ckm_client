module OpenEHR
  class CKMClient
    attr_reader :repository

    def initialize(repository)
      @repository = repository
    end

    def fetch(id)
    end
  end
end
