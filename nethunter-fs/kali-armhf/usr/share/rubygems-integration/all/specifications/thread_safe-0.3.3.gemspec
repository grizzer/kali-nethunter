# -*- encoding: utf-8 -*-
# stub: thread_safe 0.3.3 ruby lib

Gem::Specification.new do |s|
  s.name = "thread_safe"
  s.version = "0.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Charles Oliver Nutter", "thedarkone"]
  s.date = "2014-04-07"
  s.description = "Thread-safe collections and utilities for Ruby"
  s.email = ["headius@headius.com", "thedarkone2@gmail.com"]
  s.files = [".gitignore", ".travis.yml", "Gemfile", "LICENSE", "README.md", "Rakefile", "examples/bench_cache.rb", "ext/org/jruby/ext/thread_safe/JRubyCacheBackendLibrary.java", "ext/org/jruby/ext/thread_safe/jsr166e/ConcurrentHashMap.java", "ext/org/jruby/ext/thread_safe/jsr166e/ConcurrentHashMapV8.java", "ext/org/jruby/ext/thread_safe/jsr166e/LongAdder.java", "ext/org/jruby/ext/thread_safe/jsr166e/Striped64.java", "ext/org/jruby/ext/thread_safe/jsr166e/nounsafe/ConcurrentHashMapV8.java", "ext/org/jruby/ext/thread_safe/jsr166e/nounsafe/LongAdder.java", "ext/org/jruby/ext/thread_safe/jsr166e/nounsafe/Striped64.java", "ext/org/jruby/ext/thread_safe/jsr166y/ThreadLocalRandom.java", "ext/thread_safe/JrubyCacheBackendService.java", "lib/thread_safe.rb", "lib/thread_safe/atomic_reference_cache_backend.rb", "lib/thread_safe/cache.rb", "lib/thread_safe/mri_cache_backend.rb", "lib/thread_safe/non_concurrent_cache_backend.rb", "lib/thread_safe/synchronized_cache_backend.rb", "lib/thread_safe/synchronized_delegator.rb", "lib/thread_safe/util.rb", "lib/thread_safe/util/adder.rb", "lib/thread_safe/util/atomic_reference.rb", "lib/thread_safe/util/cheap_lockable.rb", "lib/thread_safe/util/power_of_two_tuple.rb", "lib/thread_safe/util/striped64.rb", "lib/thread_safe/util/volatile.rb", "lib/thread_safe/util/volatile_tuple.rb", "lib/thread_safe/util/xor_shift_random.rb", "lib/thread_safe/version.rb", "test/src/thread_safe/SecurityManager.java", "test/test_array.rb", "test/test_cache.rb", "test/test_cache_loops.rb", "test/test_hash.rb", "test/test_helper.rb", "test/test_synchronized_delegator.rb", "thread_safe.gemspec"]
  s.homepage = "https://github.com/headius/thread_safe"
  s.licenses = ["Apache-2.0"]
  s.rubygems_version = "2.2.2"
  s.summary = "A collection of data structures and utilities to make thread-safe programming in Ruby easier"
  s.test_files = ["test/src/thread_safe/SecurityManager.java", "test/test_array.rb", "test/test_cache.rb", "test/test_cache_loops.rb", "test/test_hash.rb", "test/test_helper.rb", "test/test_synchronized_delegator.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<atomic>, ["< 2", ">= 1.1.7"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<atomic>, ["< 2", ">= 1.1.7"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<atomic>, ["< 2", ">= 1.1.7"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
