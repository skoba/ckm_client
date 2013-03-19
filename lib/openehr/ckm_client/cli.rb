require 'thor'
module OpenEHR
  module CKMClient
    class CLI < Thor
      desc 'fetch', 'Retrieve archetype by archetype_id'
      def fetch(archtype_id)
        puts OpenEHR::CKMClient.new.fetch(archtype_id)
      end
      
      desc 'search', 'Query archetype by partial id'
      def search(part_id)
        puts OpenEHR::CKMClient.new.search(part_id)
      end
      
      desc 'help', 'Show  this help'
      def help
        puts <<USAGE
Usage:
  ckmc <command> [<args>]

Commands supported:
  fetch    Retrieve archetype by archetype_id
  search   query archetype by keyword
  help     show this help
USAGE
      end
    end
  end
end
