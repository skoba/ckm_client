# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ckm_client"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Shinji KOBAYASHI"]
  s.date = "2013-02-05"
  s.description = "A client module for openEHR clinical knowlege manager"
  s.email = "skoba@moss.gr.jp"
  s.executables = ["ckmc"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "Guardfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/ckmc",
    "features/ckm_client.feature",
    "features/step_definitions/ckm_client_steps.rb",
    "features/support/env.rb",
    "lib/openehr.rb",
    "lib/openehr/ckm_client.rb",
    "spec/openehr/ckm_client_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/skoba/ckm_client"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "The openEHR CKM command line client"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<soap4r-ruby1.9>, [">= 0"])
      s.add_runtime_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-spork>, [">= 0"])
      s.add_development_dependency(%q<spork>, ["~> 1.0.0.rc"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 2.4.0"])
      s.add_development_dependency(%q<guard-cucumber>, [">= 0"])
      s.add_development_dependency(%q<listen>, ["= 0.6"])
      s.add_development_dependency(%q<rb-kqueue>, [">= 0"])
      s.add_development_dependency(%q<libnotify>, [">= 0"])
    else
      s.add_dependency(%q<soap4r-ruby1.9>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-spork>, [">= 0"])
      s.add_dependency(%q<spork>, ["~> 1.0.0.rc"])
      s.add_dependency(%q<guard-rspec>, ["~> 2.4.0"])
      s.add_dependency(%q<guard-cucumber>, [">= 0"])
      s.add_dependency(%q<listen>, ["= 0.6"])
      s.add_dependency(%q<rb-kqueue>, [">= 0"])
      s.add_dependency(%q<libnotify>, [">= 0"])
    end
  else
    s.add_dependency(%q<soap4r-ruby1.9>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-spork>, [">= 0"])
    s.add_dependency(%q<spork>, ["~> 1.0.0.rc"])
    s.add_dependency(%q<guard-rspec>, ["~> 2.4.0"])
    s.add_dependency(%q<guard-cucumber>, [">= 0"])
    s.add_dependency(%q<listen>, ["= 0.6"])
    s.add_dependency(%q<rb-kqueue>, [">= 0"])
    s.add_dependency(%q<libnotify>, [">= 0"])
  end
end

