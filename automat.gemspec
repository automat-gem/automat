$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'state_machine/version'

Gem::Specification.new do |s|
  s.name              = "automat"
  s.version           = StateMachine::VERSION
  s.authors           = ["Aaron Pfeifer", "Bodo Tasche"]
  s.email             = "bodo@bitcrowd.net"
  s.homepage          = "https://github.com/automat-gem/automat"
  s.description       = "Adds support for creating state machines for attributes on any Ruby class"
  s.summary           = "State machines for attributes"
  s.require_paths     = ["lib"]
  ignores             = File.read(".gitignore").split.map {|i| i.sub(/\/$/, "/*").sub(/^[^\/]/, "**/\\0")}
  s.files             = (Dir[".*"] + Dir["**/*"]).select {|f| File.file?(f) && !ignores.any? {|i| File.fnmatch(i, "/#{f}")}}
  s.test_files        = s.files.grep(/^test\//)
  s.rdoc_options      = %w(--line-numbers --inline-source --title automat --main README.md)
  s.extra_rdoc_files  = %w(README.md CHANGELOG.md LICENSE)
  
  s.add_development_dependency("rake")
  s.add_development_dependency("simplecov")
  s.add_development_dependency("appraisal", "~> 0.5.0")
end
