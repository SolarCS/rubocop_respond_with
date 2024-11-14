# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop_respond_with/version'

Gem::Specification.new do |spec|
  spec.name          = "rubocop_respond_with"
  spec.version       = RubocopRespondWith::VERSION
  spec.authors       = ["Max Jacobson"]
  spec.email         = ["max@hardscrabble.net"]

  spec.summary       = %q{RuboCop extension which forbids respond_with}
  spec.description   = %q{Sometimes it causes some trouble. Take that as read. This will let you know when you slip, and include respond_with.}
  spec.homepage      = "https://github.com/SolarCS/rubocop_respond_with"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rubocop", "~> 1.68"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
