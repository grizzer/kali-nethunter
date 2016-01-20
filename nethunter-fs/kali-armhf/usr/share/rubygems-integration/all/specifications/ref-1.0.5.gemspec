# -*- encoding: utf-8 -*-
# stub: ref 1.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "ref"
  s.version = "1.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Brian Durand"]
  s.date = "2013-05-20"
  s.description = "Library that implements weak, soft, and strong references in Ruby that work across multiple runtimes (MRI, REE, YARV, Jruby, Rubinius, and IronRuby). Also includes implementation of maps/hashes that use references and a reference queue."
  s.email = ["bbdurand@gmail.com"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["MIT_LICENSE", "README.rdoc", "VERSION", "ext/java/org/jruby/ext/ref/ReferencesService.java", "ext/java/org/jruby/ext/ref/RubySoftReference.java", "ext/java/org/jruby/ext/ref/RubyWeakReference.java", "lib/org/jruby/ext/ref/references.jar", "lib/ref.rb", "lib/ref/abstract_reference_key_map.rb", "lib/ref/abstract_reference_value_map.rb", "lib/ref/mock.rb", "lib/ref/reference.rb", "lib/ref/reference_queue.rb", "lib/ref/safe_monitor.rb", "lib/ref/soft_key_map.rb", "lib/ref/soft_reference.rb", "lib/ref/soft_value_map.rb", "lib/ref/strong_reference.rb", "lib/ref/weak_key_map.rb", "lib/ref/weak_reference.rb", "lib/ref/weak_reference/iron_ruby.rb", "lib/ref/weak_reference/pure_ruby.rb", "lib/ref/weak_reference/weak_ref.rb", "lib/ref/weak_value_map.rb", "test/mock_test.rb", "test/mock_test.rbc", "test/reference_key_map_behavior.rb", "test/reference_key_map_behavior.rbc", "test/reference_queue_test.rb", "test/reference_queue_test.rbc", "test/reference_value_map_behavior.rb", "test/reference_value_map_behavior.rbc", "test/soft_key_map_test.rb", "test/soft_key_map_test.rbc", "test/soft_reference_test.rb", "test/soft_reference_test.rbc", "test/soft_value_map_test.rb", "test/soft_value_map_test.rbc", "test/strong_reference_test.rb", "test/strong_reference_test.rbc", "test/test_helper.rb", "test/test_helper.rbc", "test/weak_key_map_test.rb", "test/weak_key_map_test.rbc", "test/weak_reference_test.rb", "test/weak_reference_test.rbc", "test/weak_value_map_test.rb", "test/weak_value_map_test.rbc"]
  s.homepage = "http://github.com/bdurand/ref"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8", "--main", "README.rdoc"]
  s.rubygems_version = "2.2.2"
  s.summary = "Library that implements weak, soft, and strong references in Ruby."
end
