# -*- encoding: utf-8 -*-
# stub: naught 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "naught"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Avdi Grimm"]
  s.date = "2014-01-26"
  s.description = "Naught is a toolkit for building Null Objects"
  s.email = ["avdi@avdi.org"]
  s.files = [".gitignore", ".rspec", ".rubocop.yml", ".travis.yml", "Changelog.md", "Gemfile", "Guardfile", "LICENSE.txt", "README.markdown", "Rakefile", "lib/naught.rb", "lib/naught/basic_object.rb", "lib/naught/conversions.rb", "lib/naught/null_class_builder.rb", "lib/naught/null_class_builder/command.rb", "lib/naught/null_class_builder/commands.rb", "lib/naught/null_class_builder/commands/define_explicit_conversions.rb", "lib/naught/null_class_builder/commands/define_implicit_conversions.rb", "lib/naught/null_class_builder/commands/impersonate.rb", "lib/naught/null_class_builder/commands/mimic.rb", "lib/naught/null_class_builder/commands/pebble.rb", "lib/naught/null_class_builder/commands/predicates_return.rb", "lib/naught/null_class_builder/commands/singleton.rb", "lib/naught/null_class_builder/commands/traceable.rb", "lib/naught/version.rb", "naught.gemspec", "spec/base_object_spec.rb", "spec/basic_null_object_spec.rb", "spec/blackhole_spec.rb", "spec/explicit_conversions_spec.rb", "spec/functions/actual_spec.rb", "spec/functions/just_spec.rb", "spec/functions/maybe_spec.rb", "spec/functions/null_spec.rb", "spec/implicit_conversions_spec.rb", "spec/mimic_spec.rb", "spec/naught/null_object_builder/command_spec.rb", "spec/naught/null_object_builder_spec.rb", "spec/naught_spec.rb", "spec/pebble_spec.rb", "spec/predicate_spec.rb", "spec/singleton_null_object_spec.rb", "spec/spec_helper.rb", "spec/support/convertable_null.rb", "spec/support/jruby.rb", "spec/support/rubinius.rb", "spec/support/ruby_18.rb"]
  s.homepage = "https://github.com/avdi/naught"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Naught is a toolkit for building Null Objects"
  s.test_files = ["spec/base_object_spec.rb", "spec/basic_null_object_spec.rb", "spec/blackhole_spec.rb", "spec/explicit_conversions_spec.rb", "spec/functions/actual_spec.rb", "spec/functions/just_spec.rb", "spec/functions/maybe_spec.rb", "spec/functions/null_spec.rb", "spec/implicit_conversions_spec.rb", "spec/mimic_spec.rb", "spec/naught/null_object_builder/command_spec.rb", "spec/naught/null_object_builder_spec.rb", "spec/naught_spec.rb", "spec/pebble_spec.rb", "spec/predicate_spec.rb", "spec/singleton_null_object_spec.rb", "spec/spec_helper.rb", "spec/support/convertable_null.rb", "spec/support/jruby.rb", "spec/support/rubinius.rb", "spec/support/ruby_18.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
  end
end
