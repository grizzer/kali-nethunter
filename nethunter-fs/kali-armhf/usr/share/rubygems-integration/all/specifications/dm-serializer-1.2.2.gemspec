# -*- encoding: utf-8 -*-
# stub: dm-serializer 1.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "dm-serializer"
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Guy van den Berg", "Dan Kubb"]
  s.date = "2015-07-01"
  s.description = "DataMapper plugin for serializing Resources and Collections"
  s.email = ["dan.kubb@gmail.com"]
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = ["Gemfile", "LICENSE", "README.rdoc", "Rakefile", "benchmarks", "benchmarks/to_json.rb", "benchmarks/to_xml.rb", "debian", "debian/README.Debian", "debian/changelog", "debian/compat", "debian/control", "debian/copyright", "debian/patches", "debian/patches/drop-depends-on-fastercsv.patch", "debian/patches/drop-git-ls-in-gemspec.patch", "debian/patches/series", "debian/ruby-dm-serializer", "debian/ruby-dm-serializer.debhelper.log", "debian/ruby-dm-serializer.docs", "debian/rules", "debian/source", "debian/source/format", "debian/watch", "dm-serializer.gemspec", "lib", "lib/dm-serializer", "lib/dm-serializer.rb", "lib/dm-serializer/common.rb", "lib/dm-serializer/to_csv.rb", "lib/dm-serializer/to_json.rb", "lib/dm-serializer/to_xml.rb", "lib/dm-serializer/to_yaml.rb", "lib/dm-serializer/xml", "lib/dm-serializer/xml.rb", "lib/dm-serializer/xml/libxml.rb", "lib/dm-serializer/xml/nokogiri.rb", "lib/dm-serializer/xml/rexml.rb", "spec", "spec/fixtures", "spec/fixtures/cow.rb", "spec/fixtures/planet.rb", "spec/fixtures/quan_tum_cat.rb", "spec/fixtures/vehicle.rb", "spec/lib", "spec/lib/serialization_method_shared_spec.rb", "spec/public", "spec/public/serializer_spec.rb", "spec/public/to_csv_spec.rb", "spec/public/to_json_spec.rb", "spec/public/to_xml_spec.rb", "spec/public/to_yaml_spec.rb", "spec/rcov.opts", "spec/spec.opts", "spec/spec_helper.rb", "tasks", "tasks/spec.rake", "tasks/yard.rake", "tasks/yardstick.rake"]
  s.homepage = "http://datamapper.org"
  s.rubygems_version = "2.2.2"
  s.summary = "DataMapper plugin for serializing Resources and Collections"
  s.test_files = ["spec/rcov.opts", "spec/lib", "spec/lib/serialization_method_shared_spec.rb", "spec/spec_helper.rb", "spec/spec.opts", "spec/public", "spec/public/to_yaml_spec.rb", "spec/public/to_csv_spec.rb", "spec/public/to_json_spec.rb", "spec/public/to_xml_spec.rb", "spec/public/serializer_spec.rb", "spec/fixtures", "spec/fixtures/vehicle.rb", "spec/fixtures/cow.rb", "spec/fixtures/planet.rb", "spec/fixtures/quan_tum_cat.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_runtime_dependency(%q<json>, ["~> 1.6"])
      s.add_runtime_dependency(%q<json_pure>, ["~> 1.6"])
      s.add_runtime_dependency(%q<dm-core>, ["~> 1.2.0"])
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3"])
    else
      s.add_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_dependency(%q<json>, ["~> 1.6"])
      s.add_dependency(%q<json_pure>, ["~> 1.6"])
      s.add_dependency(%q<dm-core>, ["~> 1.2.0"])
      s.add_dependency(%q<rake>, ["~> 0.9"])
      s.add_dependency(%q<rspec>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<multi_json>, ["~> 1.0"])
    s.add_dependency(%q<json>, ["~> 1.6"])
    s.add_dependency(%q<json_pure>, ["~> 1.6"])
    s.add_dependency(%q<dm-core>, ["~> 1.2.0"])
    s.add_dependency(%q<rake>, ["~> 0.9"])
    s.add_dependency(%q<rspec>, ["~> 1.3"])
  end
end
