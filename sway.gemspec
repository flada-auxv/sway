lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sway/version'

Gem::Specification.new do |spec|
  spec.name          = "sway"
  spec.version       = Sway::VERSION
  spec.authors       = ["blp1526"]
  spec.email         = ["blp1526@gmail.com"]
  spec.summary       = %q{Creates Hashie::Mash objects from YAML, JSON, CSV}
  spec.description   = %q{This gem creates Hashie::Mash objects from YAML, JSON, CSV. Use various uses.}
  spec.homepage      = "https://github.com/blp1526/sway"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "hashie", "2.0.5"
  spec.add_dependency "activesupport", "4.0.2"

  spec.add_development_dependency "bundler", "1.5.0.rc.1"
  spec.add_development_dependency "rake", "10.1.0"
  spec.add_development_dependency "rspec", "2.14.1"
end
