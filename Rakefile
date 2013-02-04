#!/usr/bin/env rake
# encoding: utf-8

require 'rubygems'
require 'bundler'
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "ckm_client"
  gem.homepage = "http://github.com/skoba/ckm_client"
  gem.license = "MIT"
  gem.summary = %Q{A client module for openEHR clinical knowlege manager}
  gem.description = %Q{A client module for openEHR clinical knowlege manager}
  gem.email = "skoba@moss.gr.jp"
  gem.authors = ["Shinji KOBAYASHI"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec
