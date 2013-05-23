# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'biba/version'

Gem::Specification.new do |spec|
  spec.name          = "biba"
  spec.version       = Biba::VERSION
  spec.authors       = ["Aaron Massey"]
  spec.email         = ["akmassey@sixlines.org"]
  spec.description   = %q{Biba is an annotated bibliography manager.}
  spec.summary       = %q{Biba is an annotated bibliography manager.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bibtex-ruby"
  spec.add_dependency "citeproc-ruby"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard-rspec"
end
