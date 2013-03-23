require 'thor'
require 'openehr/ckm_client/soap_interface'

module OpenEHR
  module CKMClient
    class CLI < Thor
      include Thor::Actions

      desc 'get', 'Retrieve archetype by archetype_id'
      def get(archetype_id)
        create_file archetype_id+'.adl', soap_interface.fetch(archetype_id)
      end

      desc 'fetch', 'alias of get'
      alias fetch get
      
      desc 'search', 'Query archetype by partial id'
      def search(part_id)
        puts soap_interface.search(part_id)
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

      private

      def soap_interface
        OpenEHR::CKMClient::SOAPInterface.new
      end
    end
  end
end
