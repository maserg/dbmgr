# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dbmgr/version'

Gem::Specification.new do |spec|
  spec.name          = "dbmgr"
  spec.version       = Dbmgr::VERSION
  spec.authors       = ["Cody"]
  spec.email         = ["callahanrts@gmail.com"]

  spec.required_ruby_version = '< 2.5'

  spec.summary       = %q{Create database backups and restore from previously created backups}
  spec.description   = %q{Create database backups to share with others across your dev team.
                          Other developers can restore from backups you've created.}
  spec.homepage      = "https://github.com/callahanrts/dbmgr"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/dbmgr$}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor', "~> 0"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "mysql2", "~> 0.4.5"
  spec.add_development_dependency "pg", "~> 0.18.2"
  spec.add_development_dependency "mocha", "~> 1.2"
end
