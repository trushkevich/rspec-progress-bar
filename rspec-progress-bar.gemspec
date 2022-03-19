# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_progress_bar/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-progress-bar'
  spec.version       = RspecProgressBar::VERSION

  spec.authors       = ['Anton Trushkevich']
  spec.email         = ['trushkevich@gmail.com']

  spec.summary       = 'RSpec progress bar formatter'
  spec.homepage      = 'https://github.com/trushkevich/rspec-progress-bar'
  spec.license       = 'MIT'

  spec.require_paths = ['lib']
  spec.files         = `git ls-files`.split($/)
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split($/)

  spec.add_runtime_dependency 'rspec', '~> 3.0'
  spec.add_runtime_dependency 'progress_bar', '~> 1.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'progress_bar', '~> 1.0'
end
