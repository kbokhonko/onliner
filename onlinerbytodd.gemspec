# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onlinerbytodd/version'

Gem::Specification.new do |spec|
  spec.name          = "onlinerbytodd"
  spec.platform    = Gem::Platform::RUBY
  spec.version       = Onlinerbytodd::VERSION
  spec.authors       = ["Todd Nestor"]
  spec.email         = ["todd.nestor@gmail.com"]
  spec.description   = "Gem for Rails application - provides you list of online users (for authentication gem 'devise')"
  spec.summary       = %q{Gem for Rails application - provides you list of online users (for authentication gem 'devise'), built off of the onliner gem}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency('redis', '~> 3.0.6')
  spec.add_dependency "redis-namespace", ">= 1.3.0"
end