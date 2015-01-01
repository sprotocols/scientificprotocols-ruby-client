# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scientificprotocols/version'

Gem::Specification.new do |spec|
  spec.name          = 'scientific_protocols'
  spec.version       = ScientificProtocols::VERSION
  spec.authors       = ['David Iorns']
  spec.email         = ['david.iorns@gmail.com']
  spec.summary       = %q{A Ruby wrapper for the Scientific Protocols API. https://www.scientificprotocols.org/api_v1}
  spec.homepage      = 'https://www.scientificprotocols.org'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_dependency 'faraday'
  spec.add_dependency 'activesupport'
  spec.add_dependency 'mime-types'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0.0'
  spec.add_development_dependency 'webmock', '~> 1.18.0'
  spec.add_development_dependency 'vcr'
end
