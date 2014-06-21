# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ytstat/version'

Gem::Specification.new do |spec|
  spec.name          = "ytstat"
  spec.version       = Ytstat::VERSION
  spec.authors       = ["Jianwei Han"]
  spec.email         = ["hanjianwei@gmail.com"]
  spec.summary       = %q{Yunti server stats.}
  spec.description   = %q{It gives a summary of Yunti servers.}
  spec.homepage      = "https://github.com/hanjianwei/ytstat"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('tabularize', "~> 0.2.9")

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
