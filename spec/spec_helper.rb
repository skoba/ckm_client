require 'rubygems'
require 'spork'
require 'rspec'

Spork.prefork do
  $:.unshift(File.dirname(__FILE__) + '/../lib')
  require 'openehr'
end

Spork.each_run do

end





