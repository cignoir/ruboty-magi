# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/magi/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-magi"
  spec.version       = Ruboty::Magi::VERSION
  spec.authors       = ["Shulla Cignoir"]
  spec.email         = ["cignoir@gmail.com"]

  spec.summary       = %q{Magi System: A trio of supercomputers designed by Dr. Naoko Akagi}
  spec.description   = %q{http://wiki.evageeks.org/Magi}
  spec.homepage      = "https://github.com/cignoir/ruboty-magi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.11.2"
  spec.add_development_dependency "rake", "~> 10.0"
end
