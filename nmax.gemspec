# frozen_string_literal: true

lib = File.expand_path File.join(File.dirname(__FILE__), 'lib')
$:.unshift lib unless $:.include?(lib)

require_relative "lib/nmax/version"

Gem::Specification.new do |spec|
  spec.name          = 'nmax'
  spec.version       = Nmax::VERSION
  spec.authors       = ['Igor Korp']
  spec.email         = ['nsveynbern@gmail.com']

  spec.summary       = 'Ruby gem for parse integers from stdin'
  spec.description   = 'search numbers in stdin'
  spec.homepage      = 'https://github.com/IgorKorp'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files`.split($\)
  spec.executables   = ["nmax"]
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
