# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'regaliator/version'

Gem::Specification.new do |spec|
  spec.name          = 'regaliator'
  spec.version       = Regaliator::VERSION
  spec.authors       = ['Hesham El-Nahhas', 'Leigh Halliday', 'Geoffrey Roguelon', ]
  spec.email         = ['hesham@regalii.com', 'leigh@regalii.com', 'geoffrey@regalii.com']
  spec.summary       = %q{Ruby wrapper for Regalii's API}
  spec.description   = "A Ruby client for consuming Regalii's APIs."
  spec.homepage      = 'https://www.regalii.com/api'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = ['>= 2.1.0', '< 3.0.0']

  spec.add_dependency 'json'

  spec.add_development_dependency 'bundler',            '~> 2.4', '<= 2.4.22'
  spec.add_development_dependency 'minitest-reporters', '~> 1.7'
  spec.add_development_dependency 'minitest',           '~> 5.24'
  spec.add_development_dependency 'rake',               '~> 13.0'
  spec.add_development_dependency 'vcr',                '~> 6.2'
  spec.add_development_dependency 'webmock',            '~> 3.23'
  spec.add_development_dependency 'pry'
end
