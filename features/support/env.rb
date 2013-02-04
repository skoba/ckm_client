require 'rubygems'
require 'spork'
#uncomment the following line to use spork with the debugger
#require 'spork/ext/ruby-debug'

Spork.prefork do
  $LOAD_PATH << File.expand_path('../../../lib', __FILE__)
  require 'openehr'
end

Spork.each_run do

end






