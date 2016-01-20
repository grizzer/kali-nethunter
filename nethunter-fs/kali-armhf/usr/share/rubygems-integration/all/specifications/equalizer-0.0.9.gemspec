# -*- encoding: utf-8 -*-
# stub: equalizer 0.0.9 ruby lib

Gem::Specification.new do |s|
  s.name = "equalizer"
  s.version = "0.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dan Kubb", "Markus Schirp"]
  s.date = "2013-12-23"
  s.description = "Module to define equality, equivalence and inspection methods"
  s.email = ["dan.kubb@gmail.com", "mbj@schirp-dso.com"]
  s.extra_rdoc_files = ["LICENSE", "README.md", "CONTRIBUTING.md"]
  s.files = [".gitignore", ".reek.yml", ".rspec", ".rubocop.yml", ".ruby-gemset", ".travis.yml", ".yardstick.yml", "CONTRIBUTING.md", "Gemfile", "LICENSE", "README.md", "Rakefile", "equalizer.gemspec", "lib/equalizer.rb", "lib/equalizer/version.rb", "spec/spec_helper.rb", "spec/support/config_alias.rb", "spec/unit/equalizer/included_spec.rb", "spec/unit/equalizer/methods/eql_predicate_spec.rb", "spec/unit/equalizer/methods/equality_operator_spec.rb", "spec/unit/equalizer/universal_spec.rb"]
  s.homepage = "https://github.com/dkubb/equalizer"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Module to define equality, equivalence and inspection methods"
  s.test_files = ["spec/unit/equalizer/included_spec.rb", "spec/unit/equalizer/methods/eql_predicate_spec.rb", "spec/unit/equalizer/methods/equality_operator_spec.rb", "spec/unit/equalizer/universal_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 1.3.5", "~> 1.3"])
    else
      s.add_dependency(%q<bundler>, [">= 1.3.5", "~> 1.3"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 1.3.5", "~> 1.3"])
  end
end
