# -*- encoding: utf-8 -*-
# stub: dm-core 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "dm-core"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dan Kubb"]
  s.date = "2013-06-10"
  s.description = "DataMapper core library"
  s.email = ["dan.kubb@gmail.com"]
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = [".autotest", ".document", ".gitignore", ".travis.yml", ".yardopts", "Gemfile", "LICENSE", "README.rdoc", "Rakefile", "VERSION", "dm-core.gemspec", "lib/dm-core.rb", "lib/dm-core/adapters.rb", "lib/dm-core/adapters/abstract_adapter.rb", "lib/dm-core/adapters/in_memory_adapter.rb", "lib/dm-core/associations/many_to_many.rb", "lib/dm-core/associations/many_to_one.rb", "lib/dm-core/associations/one_to_many.rb", "lib/dm-core/associations/one_to_one.rb", "lib/dm-core/associations/relationship.rb", "lib/dm-core/backwards.rb", "lib/dm-core/collection.rb", "lib/dm-core/core_ext/kernel.rb", "lib/dm-core/core_ext/pathname.rb", "lib/dm-core/core_ext/symbol.rb", "lib/dm-core/identity_map.rb", "lib/dm-core/model.rb", "lib/dm-core/model/hook.rb", "lib/dm-core/model/is.rb", "lib/dm-core/model/property.rb", "lib/dm-core/model/relationship.rb", "lib/dm-core/model/scope.rb", "lib/dm-core/property.rb", "lib/dm-core/property/binary.rb", "lib/dm-core/property/boolean.rb", "lib/dm-core/property/class.rb", "lib/dm-core/property/date.rb", "lib/dm-core/property/date_time.rb", "lib/dm-core/property/decimal.rb", "lib/dm-core/property/discriminator.rb", "lib/dm-core/property/float.rb", "lib/dm-core/property/integer.rb", "lib/dm-core/property/lookup.rb", "lib/dm-core/property/numeric.rb", "lib/dm-core/property/object.rb", "lib/dm-core/property/serial.rb", "lib/dm-core/property/string.rb", "lib/dm-core/property/text.rb", "lib/dm-core/property/time.rb", "lib/dm-core/property/typecast/numeric.rb", "lib/dm-core/property/typecast/time.rb", "lib/dm-core/property_set.rb", "lib/dm-core/query.rb", "lib/dm-core/query/conditions/comparison.rb", "lib/dm-core/query/conditions/operation.rb", "lib/dm-core/query/direction.rb", "lib/dm-core/query/operator.rb", "lib/dm-core/query/path.rb", "lib/dm-core/query/sort.rb", "lib/dm-core/relationship_set.rb", "lib/dm-core/repository.rb", "lib/dm-core/resource.rb", "lib/dm-core/resource/persistence_state.rb", "lib/dm-core/resource/persistence_state/clean.rb", "lib/dm-core/resource/persistence_state/deleted.rb", "lib/dm-core/resource/persistence_state/dirty.rb", "lib/dm-core/resource/persistence_state/immutable.rb", "lib/dm-core/resource/persistence_state/persisted.rb", "lib/dm-core/resource/persistence_state/transient.rb", "lib/dm-core/spec/lib/adapter_helpers.rb", "lib/dm-core/spec/lib/collection_helpers.rb", "lib/dm-core/spec/lib/counter_adapter.rb", "lib/dm-core/spec/lib/pending_helpers.rb", "lib/dm-core/spec/lib/spec_helper.rb", "lib/dm-core/spec/setup.rb", "lib/dm-core/spec/shared/adapter_spec.rb", "lib/dm-core/spec/shared/public/property_spec.rb", "lib/dm-core/spec/shared/resource_spec.rb", "lib/dm-core/spec/shared/sel_spec.rb", "lib/dm-core/spec/shared/semipublic/property_spec.rb", "lib/dm-core/spec/shared/semipublic/query/conditions/abstract_comparison_spec.rb", "lib/dm-core/support/assertions.rb", "lib/dm-core/support/chainable.rb", "lib/dm-core/support/deprecate.rb", "lib/dm-core/support/descendant_set.rb", "lib/dm-core/support/equalizer.rb", "lib/dm-core/support/ext/array.rb", "lib/dm-core/support/ext/blank.rb", "lib/dm-core/support/ext/hash.rb", "lib/dm-core/support/ext/module.rb", "lib/dm-core/support/ext/object.rb", "lib/dm-core/support/ext/string.rb", "lib/dm-core/support/ext/try_dup.rb", "lib/dm-core/support/hook.rb", "lib/dm-core/support/inflections.rb", "lib/dm-core/support/inflector/inflections.rb", "lib/dm-core/support/inflector/methods.rb", "lib/dm-core/support/lazy_array.rb", "lib/dm-core/support/local_object_space.rb", "lib/dm-core/support/logger.rb", "lib/dm-core/support/mash.rb", "lib/dm-core/support/naming_conventions.rb", "lib/dm-core/support/ordered_set.rb", "lib/dm-core/support/subject.rb", "lib/dm-core/support/subject_set.rb", "lib/dm-core/version.rb", "script/performance.rb", "script/profile.rb", "spec/lib/rspec_immediate_feedback_formatter.rb", "spec/public/associations/many_to_many/read_multiple_join_spec.rb", "spec/public/associations/many_to_many_spec.rb", "spec/public/associations/many_to_one_spec.rb", "spec/public/associations/many_to_one_with_boolean_cpk_spec.rb", "spec/public/associations/many_to_one_with_custom_fk_spec.rb", "spec/public/associations/one_to_many_spec.rb", "spec/public/associations/one_to_one_spec.rb", "spec/public/associations/one_to_one_with_boolean_cpk_spec.rb", "spec/public/collection_spec.rb", "spec/public/finalize_spec.rb", "spec/public/model/hook_spec.rb", "spec/public/model/property_spec.rb", "spec/public/model/relationship_spec.rb", "spec/public/model_spec.rb", "spec/public/property/binary_spec.rb", "spec/public/property/boolean_spec.rb", "spec/public/property/class_spec.rb", "spec/public/property/date_spec.rb", "spec/public/property/date_time_spec.rb", "spec/public/property/decimal_spec.rb", "spec/public/property/discriminator_spec.rb", "spec/public/property/float_spec.rb", "spec/public/property/integer_spec.rb", "spec/public/property/object_spec.rb", "spec/public/property/serial_spec.rb", "spec/public/property/string_spec.rb", "spec/public/property/text_spec.rb", "spec/public/property/time_spec.rb", "spec/public/property_spec.rb", "spec/public/resource/state_spec.rb", "spec/public/resource_spec.rb", "spec/public/sel_spec.rb", "spec/public/setup_spec.rb", "spec/public/shared/association_collection_shared_spec.rb", "spec/public/shared/collection_finder_shared_spec.rb", "spec/public/shared/collection_shared_spec.rb", "spec/public/shared/finder_shared_spec.rb", "spec/rcov.opts", "spec/semipublic/adapters/abstract_adapter_spec.rb", "spec/semipublic/adapters/in_memory_adapter_spec.rb", "spec/semipublic/associations/many_to_many_spec.rb", "spec/semipublic/associations/many_to_one_spec.rb", "spec/semipublic/associations/one_to_many_spec.rb", "spec/semipublic/associations/one_to_one_spec.rb", "spec/semipublic/associations/relationship_spec.rb", "spec/semipublic/associations_spec.rb", "spec/semipublic/collection_spec.rb", "spec/semipublic/model_spec.rb", "spec/semipublic/property/binary_spec.rb", "spec/semipublic/property/boolean_spec.rb", "spec/semipublic/property/class_spec.rb", "spec/semipublic/property/date_spec.rb", "spec/semipublic/property/date_time_spec.rb", "spec/semipublic/property/decimal_spec.rb", "spec/semipublic/property/discriminator_spec.rb", "spec/semipublic/property/float_spec.rb", "spec/semipublic/property/integer_spec.rb", "spec/semipublic/property/lookup_spec.rb", "spec/semipublic/property/serial_spec.rb", "spec/semipublic/property/string_spec.rb", "spec/semipublic/property/text_spec.rb", "spec/semipublic/property/time_spec.rb", "spec/semipublic/property_spec.rb", "spec/semipublic/query/conditions/comparison_spec.rb", "spec/semipublic/query/conditions/operation_spec.rb", "spec/semipublic/query/path_spec.rb", "spec/semipublic/query_spec.rb", "spec/semipublic/resource/state/clean_spec.rb", "spec/semipublic/resource/state/deleted_spec.rb", "spec/semipublic/resource/state/dirty_spec.rb", "spec/semipublic/resource/state/immutable_spec.rb", "spec/semipublic/resource/state/transient_spec.rb", "spec/semipublic/resource/state_spec.rb", "spec/semipublic/resource_spec.rb", "spec/semipublic/shared/condition_shared_spec.rb", "spec/semipublic/shared/resource_shared_spec.rb", "spec/semipublic/shared/resource_state_shared_spec.rb", "spec/semipublic/shared/subject_shared_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "spec/support/core_ext/hash.rb", "spec/support/core_ext/inheritable_attributes.rb", "spec/support/properties/huge_integer.rb", "spec/unit/array_spec.rb", "spec/unit/blank_spec.rb", "spec/unit/data_mapper/ordered_set/append_spec.rb", "spec/unit/data_mapper/ordered_set/clear_spec.rb", "spec/unit/data_mapper/ordered_set/delete_spec.rb", "spec/unit/data_mapper/ordered_set/each_spec.rb", "spec/unit/data_mapper/ordered_set/empty_spec.rb", "spec/unit/data_mapper/ordered_set/entries_spec.rb", "spec/unit/data_mapper/ordered_set/eql_spec.rb", "spec/unit/data_mapper/ordered_set/equal_value_spec.rb", "spec/unit/data_mapper/ordered_set/hash_spec.rb", "spec/unit/data_mapper/ordered_set/include_spec.rb", "spec/unit/data_mapper/ordered_set/index_spec.rb", "spec/unit/data_mapper/ordered_set/initialize_spec.rb", "spec/unit/data_mapper/ordered_set/merge_spec.rb", "spec/unit/data_mapper/ordered_set/shared/append_spec.rb", "spec/unit/data_mapper/ordered_set/shared/clear_spec.rb", "spec/unit/data_mapper/ordered_set/shared/delete_spec.rb", "spec/unit/data_mapper/ordered_set/shared/each_spec.rb", "spec/unit/data_mapper/ordered_set/shared/empty_spec.rb", "spec/unit/data_mapper/ordered_set/shared/entries_spec.rb", "spec/unit/data_mapper/ordered_set/shared/include_spec.rb", "spec/unit/data_mapper/ordered_set/shared/index_spec.rb", "spec/unit/data_mapper/ordered_set/shared/initialize_spec.rb", "spec/unit/data_mapper/ordered_set/shared/merge_spec.rb", "spec/unit/data_mapper/ordered_set/shared/size_spec.rb", "spec/unit/data_mapper/ordered_set/shared/to_ary_spec.rb", "spec/unit/data_mapper/ordered_set/size_spec.rb", "spec/unit/data_mapper/ordered_set/to_ary_spec.rb", "spec/unit/data_mapper/subject_set/append_spec.rb", "spec/unit/data_mapper/subject_set/clear_spec.rb", "spec/unit/data_mapper/subject_set/delete_spec.rb", "spec/unit/data_mapper/subject_set/each_spec.rb", "spec/unit/data_mapper/subject_set/empty_spec.rb", "spec/unit/data_mapper/subject_set/entries_spec.rb", "spec/unit/data_mapper/subject_set/get_spec.rb", "spec/unit/data_mapper/subject_set/include_spec.rb", "spec/unit/data_mapper/subject_set/named_spec.rb", "spec/unit/data_mapper/subject_set/shared/append_spec.rb", "spec/unit/data_mapper/subject_set/shared/clear_spec.rb", "spec/unit/data_mapper/subject_set/shared/delete_spec.rb", "spec/unit/data_mapper/subject_set/shared/each_spec.rb", "spec/unit/data_mapper/subject_set/shared/empty_spec.rb", "spec/unit/data_mapper/subject_set/shared/entries_spec.rb", "spec/unit/data_mapper/subject_set/shared/get_spec.rb", "spec/unit/data_mapper/subject_set/shared/include_spec.rb", "spec/unit/data_mapper/subject_set/shared/named_spec.rb", "spec/unit/data_mapper/subject_set/shared/size_spec.rb", "spec/unit/data_mapper/subject_set/shared/to_ary_spec.rb", "spec/unit/data_mapper/subject_set/shared/values_at_spec.rb", "spec/unit/data_mapper/subject_set/size_spec.rb", "spec/unit/data_mapper/subject_set/to_ary_spec.rb", "spec/unit/data_mapper/subject_set/values_at_spec.rb", "spec/unit/hash_spec.rb", "spec/unit/hook_spec.rb", "spec/unit/lazy_array_spec.rb", "spec/unit/mash_spec.rb", "spec/unit/module_spec.rb", "spec/unit/object_spec.rb", "spec/unit/try_dup_spec.rb", "tasks/ci.rake", "tasks/spec.rake", "tasks/yard.rake", "tasks/yardstick.rake"]
  s.homepage = "https://github.com/datamapper/dm-core"
  s.rubygems_version = "2.2.2"
  s.summary = "DataMapper core library"
  s.test_files = ["spec/lib/rspec_immediate_feedback_formatter.rb", "spec/public/associations/many_to_many/read_multiple_join_spec.rb", "spec/public/associations/many_to_many_spec.rb", "spec/public/associations/many_to_one_spec.rb", "spec/public/associations/many_to_one_with_boolean_cpk_spec.rb", "spec/public/associations/many_to_one_with_custom_fk_spec.rb", "spec/public/associations/one_to_many_spec.rb", "spec/public/associations/one_to_one_spec.rb", "spec/public/associations/one_to_one_with_boolean_cpk_spec.rb", "spec/public/collection_spec.rb", "spec/public/finalize_spec.rb", "spec/public/model/hook_spec.rb", "spec/public/model/property_spec.rb", "spec/public/model/relationship_spec.rb", "spec/public/model_spec.rb", "spec/public/property/binary_spec.rb", "spec/public/property/boolean_spec.rb", "spec/public/property/class_spec.rb", "spec/public/property/date_spec.rb", "spec/public/property/date_time_spec.rb", "spec/public/property/decimal_spec.rb", "spec/public/property/discriminator_spec.rb", "spec/public/property/float_spec.rb", "spec/public/property/integer_spec.rb", "spec/public/property/object_spec.rb", "spec/public/property/serial_spec.rb", "spec/public/property/string_spec.rb", "spec/public/property/text_spec.rb", "spec/public/property/time_spec.rb", "spec/public/property_spec.rb", "spec/public/resource/state_spec.rb", "spec/public/resource_spec.rb", "spec/public/sel_spec.rb", "spec/public/setup_spec.rb", "spec/public/shared/association_collection_shared_spec.rb", "spec/public/shared/collection_finder_shared_spec.rb", "spec/public/shared/collection_shared_spec.rb", "spec/public/shared/finder_shared_spec.rb", "spec/rcov.opts", "spec/semipublic/adapters/abstract_adapter_spec.rb", "spec/semipublic/adapters/in_memory_adapter_spec.rb", "spec/semipublic/associations/many_to_many_spec.rb", "spec/semipublic/associations/many_to_one_spec.rb", "spec/semipublic/associations/one_to_many_spec.rb", "spec/semipublic/associations/one_to_one_spec.rb", "spec/semipublic/associations/relationship_spec.rb", "spec/semipublic/associations_spec.rb", "spec/semipublic/collection_spec.rb", "spec/semipublic/model_spec.rb", "spec/semipublic/property/binary_spec.rb", "spec/semipublic/property/boolean_spec.rb", "spec/semipublic/property/class_spec.rb", "spec/semipublic/property/date_spec.rb", "spec/semipublic/property/date_time_spec.rb", "spec/semipublic/property/decimal_spec.rb", "spec/semipublic/property/discriminator_spec.rb", "spec/semipublic/property/float_spec.rb", "spec/semipublic/property/integer_spec.rb", "spec/semipublic/property/lookup_spec.rb", "spec/semipublic/property/serial_spec.rb", "spec/semipublic/property/string_spec.rb", "spec/semipublic/property/text_spec.rb", "spec/semipublic/property/time_spec.rb", "spec/semipublic/property_spec.rb", "spec/semipublic/query/conditions/comparison_spec.rb", "spec/semipublic/query/conditions/operation_spec.rb", "spec/semipublic/query/path_spec.rb", "spec/semipublic/query_spec.rb", "spec/semipublic/resource/state/clean_spec.rb", "spec/semipublic/resource/state/deleted_spec.rb", "spec/semipublic/resource/state/dirty_spec.rb", "spec/semipublic/resource/state/immutable_spec.rb", "spec/semipublic/resource/state/transient_spec.rb", "spec/semipublic/resource/state_spec.rb", "spec/semipublic/resource_spec.rb", "spec/semipublic/shared/condition_shared_spec.rb", "spec/semipublic/shared/resource_shared_spec.rb", "spec/semipublic/shared/resource_state_shared_spec.rb", "spec/semipublic/shared/subject_shared_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "spec/support/core_ext/hash.rb", "spec/support/core_ext/inheritable_attributes.rb", "spec/support/properties/huge_integer.rb", "spec/unit/array_spec.rb", "spec/unit/blank_spec.rb", "spec/unit/data_mapper/ordered_set/append_spec.rb", "spec/unit/data_mapper/ordered_set/clear_spec.rb", "spec/unit/data_mapper/ordered_set/delete_spec.rb", "spec/unit/data_mapper/ordered_set/each_spec.rb", "spec/unit/data_mapper/ordered_set/empty_spec.rb", "spec/unit/data_mapper/ordered_set/entries_spec.rb", "spec/unit/data_mapper/ordered_set/eql_spec.rb", "spec/unit/data_mapper/ordered_set/equal_value_spec.rb", "spec/unit/data_mapper/ordered_set/hash_spec.rb", "spec/unit/data_mapper/ordered_set/include_spec.rb", "spec/unit/data_mapper/ordered_set/index_spec.rb", "spec/unit/data_mapper/ordered_set/initialize_spec.rb", "spec/unit/data_mapper/ordered_set/merge_spec.rb", "spec/unit/data_mapper/ordered_set/shared/append_spec.rb", "spec/unit/data_mapper/ordered_set/shared/clear_spec.rb", "spec/unit/data_mapper/ordered_set/shared/delete_spec.rb", "spec/unit/data_mapper/ordered_set/shared/each_spec.rb", "spec/unit/data_mapper/ordered_set/shared/empty_spec.rb", "spec/unit/data_mapper/ordered_set/shared/entries_spec.rb", "spec/unit/data_mapper/ordered_set/shared/include_spec.rb", "spec/unit/data_mapper/ordered_set/shared/index_spec.rb", "spec/unit/data_mapper/ordered_set/shared/initialize_spec.rb", "spec/unit/data_mapper/ordered_set/shared/merge_spec.rb", "spec/unit/data_mapper/ordered_set/shared/size_spec.rb", "spec/unit/data_mapper/ordered_set/shared/to_ary_spec.rb", "spec/unit/data_mapper/ordered_set/size_spec.rb", "spec/unit/data_mapper/ordered_set/to_ary_spec.rb", "spec/unit/data_mapper/subject_set/append_spec.rb", "spec/unit/data_mapper/subject_set/clear_spec.rb", "spec/unit/data_mapper/subject_set/delete_spec.rb", "spec/unit/data_mapper/subject_set/each_spec.rb", "spec/unit/data_mapper/subject_set/empty_spec.rb", "spec/unit/data_mapper/subject_set/entries_spec.rb", "spec/unit/data_mapper/subject_set/get_spec.rb", "spec/unit/data_mapper/subject_set/include_spec.rb", "spec/unit/data_mapper/subject_set/named_spec.rb", "spec/unit/data_mapper/subject_set/shared/append_spec.rb", "spec/unit/data_mapper/subject_set/shared/clear_spec.rb", "spec/unit/data_mapper/subject_set/shared/delete_spec.rb", "spec/unit/data_mapper/subject_set/shared/each_spec.rb", "spec/unit/data_mapper/subject_set/shared/empty_spec.rb", "spec/unit/data_mapper/subject_set/shared/entries_spec.rb", "spec/unit/data_mapper/subject_set/shared/get_spec.rb", "spec/unit/data_mapper/subject_set/shared/include_spec.rb", "spec/unit/data_mapper/subject_set/shared/named_spec.rb", "spec/unit/data_mapper/subject_set/shared/size_spec.rb", "spec/unit/data_mapper/subject_set/shared/to_ary_spec.rb", "spec/unit/data_mapper/subject_set/shared/values_at_spec.rb", "spec/unit/data_mapper/subject_set/size_spec.rb", "spec/unit/data_mapper/subject_set/to_ary_spec.rb", "spec/unit/data_mapper/subject_set/values_at_spec.rb", "spec/unit/hash_spec.rb", "spec/unit/hook_spec.rb", "spec/unit/lazy_array_spec.rb", "spec/unit/mash_spec.rb", "spec/unit/module_spec.rb", "spec/unit/object_spec.rb", "spec/unit/try_dup_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>, ["~> 2.3"])
      s.add_development_dependency(%q<rake>, ["~> 10.0.3"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.2"])
    else
      s.add_dependency(%q<addressable>, ["~> 2.3"])
      s.add_dependency(%q<rake>, ["~> 10.0.3"])
      s.add_dependency(%q<rspec>, ["~> 1.3.2"])
    end
  else
    s.add_dependency(%q<addressable>, ["~> 2.3"])
    s.add_dependency(%q<rake>, ["~> 10.0.3"])
    s.add_dependency(%q<rspec>, ["~> 1.3.2"])
  end
end