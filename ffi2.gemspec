# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ffi2/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brian Shirai"]
  gem.email         = ["brixen@gmail.com"]
  gem.description   = %q{
Provides a foreign function interface for MRI that utilizes XAPI for Ruby
implementations with modern garbage collection and concurrency facilities.
}
  gem.summary       = %q{Ruby Foreign Function Interface}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ffi2"
  gem.require_paths = ["lib"]
  gem.version       = Ffi2::VERSION

  gem.add_runtime_dependency      "redcard",  "~> 1.0"

  gem.add_development_dependency  "mspec", "~> 1.5"
  gem.add_development_dependency  "rake",  "~> 10.0"
end
