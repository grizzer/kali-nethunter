# -*- encoding: utf-8 -*-
# stub: memoizable 0.4.2 ruby lib

Gem::Specification.new do |s|
  s.name = "memoizable"
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dan Kubb", "Erik Michaels-Ober"]
  s.date = "2014-03-27"
  s.description = "Memoize method return values"
  s.email = ["dan.kubb@gmail.com", "sferik@gmail.com"]
  s.extra_rdoc_files = ["CONTRIBUTING.md", "LICENSE.md", "README.md"]
  s.files = ["CONTRIBUTING.md", "LICENSE.md", "README.md", "Rakefile", "lib/memoizable.rb", "lib/memoizable/instance_methods.rb", "lib/memoizable/memory.rb", "lib/memoizable/method_builder.rb", "lib/memoizable/module_methods.rb", "lib/memoizable/version.rb", "memoizable.gemspec", "spec/integration/serializable_spec.rb", "spec/shared/call_super_shared_spec.rb", "spec/shared/command_method_behavior.rb", "spec/spec_helper.rb", "spec/unit/memoizable/class_methods/included_spec.rb", "spec/unit/memoizable/fixtures/classes.rb", "spec/unit/memoizable/instance_methods/freeze_spec.rb", "spec/unit/memoizable/instance_methods/memoize_spec.rb", "spec/unit/memoizable/memory_spec.rb", "spec/unit/memoizable/method_builder/call_spec.rb", "spec/unit/memoizable/method_builder/class_methods/new_spec.rb", "spec/unit/memoizable/method_builder/original_method_spec.rb", "spec/unit/memoizable/module_methods/included_spec.rb", "spec/unit/memoizable/module_methods/memoize_spec.rb", "spec/unit/memoizable/module_methods/memoized_predicate_spec.rb", "spec/unit/memoizable/module_methods/unmemoized_instance_method_spec.rb"]
  s.homepage = "https://github.com/dkubb/memoizable"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Memoize method return values"
  s.test_files = ["spec/unit/memoizable/class_methods/included_spec.rb", "spec/unit/memoizable/fixtures/classes.rb", "spec/unit/memoizable/instance_methods/freeze_spec.rb", "spec/unit/memoizable/instance_methods/memoize_spec.rb", "spec/unit/memoizable/memory_spec.rb", "spec/unit/memoizable/method_builder/call_spec.rb", "spec/unit/memoizable/method_builder/class_methods/new_spec.rb", "spec/unit/memoizable/method_builder/original_method_spec.rb", "spec/unit/memoizable/module_methods/included_spec.rb", "spec/unit/memoizable/module_methods/memoize_spec.rb", "spec/unit/memoizable/module_methods/memoized_predicate_spec.rb", "spec/unit/memoizable/module_methods/unmemoized_instance_method_spec.rb", "spec/integration/serializable_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thread_safe>, [">= 0.3.1", "~> 0.3"])
      s.add_development_dependency(%q<bundler>, [">= 1.5.3", "~> 1.5"])
    else
      s.add_dependency(%q<thread_safe>, [">= 0.3.1", "~> 0.3"])
      s.add_dependency(%q<bundler>, [">= 1.5.3", "~> 1.5"])
    end
  else
    s.add_dependency(%q<thread_safe>, [">= 0.3.1", "~> 0.3"])
    s.add_dependency(%q<bundler>, [">= 1.5.3", "~> 1.5"])
  end
end
