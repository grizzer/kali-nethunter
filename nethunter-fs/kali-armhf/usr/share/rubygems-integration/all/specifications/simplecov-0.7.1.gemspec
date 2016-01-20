# -*- encoding: utf-8 -*-
# stub: simplecov 0.7.1 ruby lib

Gem::Specification.new do |s|
  s.name = "simplecov"
  s.version = "0.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Christoph Olszowka"]
  s.date = "2012-10-12"
  s.description = "Code coverage for Ruby 1.9 with a powerful configuration library and automatic merging of coverage across test suites"
  s.email = ["christoph at olszowka de"]
  s.files = [".gitignore", ".travis.yml", ".yardopts", "Appraisals", "CHANGELOG.md", "CONTRIBUTING.md", "Gemfile", "LICENSE", "README.md", "Rakefile", "cucumber.yml", "features/config_adapters.feature", "features/config_autoload.feature", "features/config_command_name.feature", "features/config_coverage_dir.feature", "features/config_deactivate_merging.feature", "features/config_formatters.feature", "features/config_merge_timeout.feature", "features/config_nocov_token.feature", "features/config_project_name.feature", "features/config_styles.feature", "features/cucumber_basic.feature", "features/maximum_coverage_drop.feature", "features/merging_test_unit_and_rspec.feature", "features/minimum_coverage.feature", "features/refuse_coverage_drop.feature", "features/rspec_basic.feature", "features/rspec_fails_on_initialization.feature", "features/rspec_groups_and_filters_basic.feature", "features/rspec_groups_and_filters_complex.feature", "features/rspec_groups_using_filter_class.feature", "features/rspec_without_simplecov.feature", "features/skipping_code_blocks_manually.feature", "features/step_definitions/html_steps.rb", "features/step_definitions/simplecov_steps.rb", "features/step_definitions/transformers.rb", "features/step_definitions/web_steps.rb", "features/support/env.rb", "features/test_unit_basic.feature", "features/test_unit_groups_and_filters_basic.feature", "features/test_unit_groups_and_filters_complex.feature", "features/test_unit_groups_using_filter_class.feature", "features/test_unit_without_simplecov.feature", "features/unicode_compatiblity.feature", "gemfiles/multi_json-legacy.gemfile", "gemfiles/multi_json-new.gemfile", "lib/simplecov.rb", "lib/simplecov/adapters.rb", "lib/simplecov/command_guesser.rb", "lib/simplecov/configuration.rb", "lib/simplecov/defaults.rb", "lib/simplecov/exit_codes.rb", "lib/simplecov/file_list.rb", "lib/simplecov/filter.rb", "lib/simplecov/formatter.rb", "lib/simplecov/formatter/multi_formatter.rb", "lib/simplecov/formatter/simple_formatter.rb", "lib/simplecov/json.rb", "lib/simplecov/last_run.rb", "lib/simplecov/merge_helpers.rb", "lib/simplecov/railtie.rb", "lib/simplecov/railties/tasks.rake", "lib/simplecov/result.rb", "lib/simplecov/result_merger.rb", "lib/simplecov/source_file.rb", "lib/simplecov/version.rb", "simplecov.gemspec", "test/faked_project/Gemfile", "test/faked_project/Rakefile", "test/faked_project/cucumber.yml", "test/faked_project/features/step_definitions/my_steps.rb", "test/faked_project/features/support/env.rb", "test/faked_project/features/test_stuff.feature", "test/faked_project/lib/faked_project.rb", "test/faked_project/lib/faked_project/framework_specific.rb", "test/faked_project/lib/faked_project/meta_magic.rb", "test/faked_project/lib/faked_project/some_class.rb", "test/faked_project/spec/faked_spec.rb", "test/faked_project/spec/meta_magic_spec.rb", "test/faked_project/spec/some_class_spec.rb", "test/faked_project/spec/spec_helper.rb", "test/faked_project/test/faked_test.rb", "test/faked_project/test/meta_magic_test.rb", "test/faked_project/test/some_class_test.rb", "test/faked_project/test/test_helper.rb", "test/fixtures/app/controllers/sample_controller.rb", "test/fixtures/app/models/user.rb", "test/fixtures/deleted_source_sample.rb", "test/fixtures/frameworks/rspec_bad.rb", "test/fixtures/frameworks/rspec_good.rb", "test/fixtures/frameworks/testunit_bad.rb", "test/fixtures/frameworks/testunit_good.rb", "test/fixtures/iso-8859.rb", "test/fixtures/resultset1.rb", "test/fixtures/resultset2.rb", "test/fixtures/sample.rb", "test/fixtures/utf-8.rb", "test/helper.rb", "test/shoulda_macros.rb", "test/test_1_8_fallbacks.rb", "test/test_command_guesser.rb", "test/test_deleted_source.rb", "test/test_file_list.rb", "test/test_filters.rb", "test/test_merge_helpers.rb", "test/test_result.rb", "test/test_return_codes.rb", "test/test_source_file.rb", "test/test_source_file_line.rb"]
  s.homepage = "http://github.com/colszowka/simplecov"
  s.rubygems_version = "2.2.2"
  s.summary = "Code coverage for Ruby 1.9 with a powerful configuration library and automatic merging of coverage across test suites"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_runtime_dependency(%q<simplecov-html>, ["~> 0.7.1"])
      s.add_development_dependency(%q<aruba>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 1.1.4"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_dependency(%q<simplecov-html>, ["~> 0.7.1"])
      s.add_dependency(%q<aruba>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 1.1.4"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<multi_json>, ["~> 1.0"])
    s.add_dependency(%q<simplecov-html>, ["~> 0.7.1"])
    s.add_dependency(%q<aruba>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 1.1.4"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end
