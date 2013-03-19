require 'thor'
require 'openehr/ckm_client/soap_interface'

module OpenEHR
  module CKMClient
    class CLI < Thor
      desc 'fetch', 'Retrieve archetype by archetype_id'
      def get(archtype_id)
        puts OpenEHR::CKMClient::SOAPInterface.new.fetch(archtype_id)
      end

      alias fetch get
      
      desc 'search', 'Query archetype by partial id'
      def search(part_id)
        puts OpenEHR::CKMClient::SOAPInterface.new.search(part_id)
      end
      
      desc 'help', 'Show  this help'
      def help
        puts <<USAGE
Usage:
  ckmc <command> [<args>]

Commands supported:
  get    Retrieve archetype by archetype_id
  search   query archetype by keyword
  help     show this help
USAGE
      end
    end
  end
end
