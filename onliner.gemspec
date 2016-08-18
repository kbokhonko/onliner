# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onliner/version'

Gem::Specification.new do |spec|
  spec.name          = "onliner"
  spec.platform    = Gem::Platform::RUBY
  spec.version       = Onliner::VERSION
  spec.authors       = ["kbokhonko", "Todd Nestor"]
  spec.email         = ["kolya.bokhonko@gmail.com", "todd.nestor@gmail.com"]
  spec.description   = "Gem for Rails application - provides you list of online users (for authentication gem 'devise')"
  spec.summary       = %q{Gem for Rails application - provides you list of online users (for authentication gem 'devise'), built off of the onliner gem}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"

  spec.add_dependency('redis')
  spec.add_dependency "redis-namespace"
end