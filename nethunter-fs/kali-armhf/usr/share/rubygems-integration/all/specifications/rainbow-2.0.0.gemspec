# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rainbow"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcin Kulik"]
  s.date = "2014-01-24"
  s.description = "Colorize printed text on ANSI terminals"
  s.email = ["m@ku1ik.com"]
  s.files = [".gitignore", ".rubocop.yml", ".travis.yml", "Changelog.md", "Gemfile", "Guardfile", "LICENSE", "README.markdown", "Rakefile", "lib/rainbow.rb", "lib/rainbow/color.rb", "lib/rainbow/ext/string.rb", "lib/rainbow/global.rb", "lib/rainbow/legacy.rb", "lib/rainbow/null_presenter.rb", "lib/rainbow/presenter.rb", "lib/rainbow/string_utils.rb", "lib/rainbow/version.rb", "lib/rainbow/wrapper.rb", "rainbow.gemspec", "spec/integration/instance_spec.rb", "spec/integration/rainbow_spec.rb", "spec/integration/string_spec.rb", "spec/spec_helper.rb", "spec/support/presenter_shared_examples.rb", "spec/unit/color_spec.rb", "spec/unit/namespace_spec.rb", "spec/unit/null_presenter_spec.rb", "spec/unit/presenter_spec.rb", "spec/unit/string_utils_spec.rb", "spec/unit/wrapper_spec.rb"]
  s.homepage = "https://github.com/sickill/rainbow"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "1.8.23"
  s.summary = "Colorize printed text on ANSI terminals"
  s.test_files = ["spec/integration/instance_spec.rb", "spec/integration/rainbow_spec.rb", "spec/integration/string_spec.rb", "spec/spec_helper.rb", "spec/support/presenter_shared_examples.rb", "spec/unit/color_spec.rb", "spec/unit/namespace_spec.rb", "spec/unit/null_presenter_spec.rb", "spec/unit/presenter_spec.rb", "spec/unit/string_utils_spec.rb", "spec/unit/wrapper_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
