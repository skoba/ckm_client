lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "openehr/ckm_client/version"

Gem::Specification.new do |gem|
  gem.name = "ckm_client"
  gem.version = OpenEHR::CKMClient::VERSION
  gem.platform = Gem::Platform::RUBY
  gem.authors = ["Shinji KOBAYASHI"]
  gem.email = "skoba@moss.gr.jp"

  gem.summary = 'CKM client and command line tool'
  gem.description = 'CKM client via web services and command line tool'
  gem.homepage = 'http://openehr.jp'
  gem.licenses = 'Apache 2.0'
  gem.executables = ["ckmc"]
  gem.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]

  gem.add_dependency('thor')
  gem.add_dependency('soap4r-ruby1.9')

  gem.add_development_dependency('rake')
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('cucumber')
  gem.add_development_dependency('guard')
  gem.add_development_dependency('guard-spork')
  gem.add_development_dependency('spork', '~> 1.0.0.rc')
  gem.add_development_dependency('guard-rspec', '~> 2.4.0')
  gem.add_development_dependency('guard-cucumber')
  gem.add_development_dependency('listen', '0.6')
  gem.add_development_dependency('rb-kqueue')
  gem.add_development_dependency('libnotify')
end


