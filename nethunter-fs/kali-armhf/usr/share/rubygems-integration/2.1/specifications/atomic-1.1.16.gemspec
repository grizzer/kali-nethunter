# -*- encoding: utf-8 -*-
# stub: atomic 1.1.16 ruby lib
# stub: ext/extconf.rb

Gem::Specification.new do |s|
  s.name = "atomic"
  s.version = "1.1.16"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Charles Oliver Nutter", "MenTaLguY", "Sokolov Yura"]
  s.date = "2014-03-17"
  s.description = "An atomic reference implementation for JRuby, Rubinius, and MRI"
  s.email = ["headius@headius.com", "mental@rydia.net", "funny.falcon@gmail.com"]
  s.extensions = ["ext/extconf.rb"]
  s.files = [".gitignore", ".travis.yml", "Gemfile", "LICENSE", "README.md", "Rakefile", "atomic.gemspec", "examples/atomic_example.rb", "examples/bench_atomic.rb", "examples/bench_atomic_1.rb", "examples/graph_atomic_bench.rb", "ext/AtomicReferenceService.java", "ext/atomic_reference.c", "ext/extconf.rb", "ext/org/jruby/ext/atomic/AtomicReferenceLibrary.java", "lib/atomic.rb", "lib/atomic/concurrent_update_error.rb", "lib/atomic/delegated_update.rb", "lib/atomic/direct_update.rb", "lib/atomic/fallback.rb", "lib/atomic/jruby.rb", "lib/atomic/numeric_cas_wrapper.rb", "lib/atomic/rbx.rb", "lib/atomic/ruby.rb", "test/test_atomic.rb"]
  s.homepage = "http://github.com/headius/ruby-atomic"
  s.licenses = ["Apache-2.0"]
  s.rubygems_version = "2.2.2"
  s.summary = "An atomic reference implementation for JRuby, Rubinius, and MRI"
  s.test_files = ["test/test_atomic.rb"]
end
