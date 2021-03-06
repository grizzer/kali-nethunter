# -*- encoding: utf-8 -*-
# stub: oj 2.10.3 ruby lib ext
# stub: ext/oj/extconf.rb

Gem::Specification.new do |s|
  s.name = "oj"
  s.version = "2.10.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib", "ext"]
  s.authors = ["Peter Ohler"]
  s.date = "2014-10-04"
  s.description = "The fastest JSON parser and object serializer. "
  s.email = "peter@ohler.com"
  s.extensions = ["ext/oj/extconf.rb"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["LICENSE", "README.md", "ext/oj/buf.h", "ext/oj/cache8.c", "ext/oj/cache8.h", "ext/oj/circarray.c", "ext/oj/circarray.h", "ext/oj/compat.c", "ext/oj/dump.c", "ext/oj/encode.h", "ext/oj/err.c", "ext/oj/err.h", "ext/oj/extconf.rb", "ext/oj/fast.c", "ext/oj/hash.c", "ext/oj/hash.h", "ext/oj/hash_test.c", "ext/oj/object.c", "ext/oj/odd.c", "ext/oj/odd.h", "ext/oj/oj.c", "ext/oj/oj.h", "ext/oj/parse.c", "ext/oj/parse.h", "ext/oj/reader.c", "ext/oj/reader.h", "ext/oj/resolve.c", "ext/oj/resolve.h", "ext/oj/saj.c", "ext/oj/scp.c", "ext/oj/sparse.c", "ext/oj/strict.c", "ext/oj/val_stack.c", "ext/oj/val_stack.h", "lib/oj.rb", "lib/oj/bag.rb", "lib/oj/error.rb", "lib/oj/mimic.rb", "lib/oj/saj.rb", "lib/oj/schandler.rb", "lib/oj/version.rb", "test/_test_mimic_rails.rb", "test/bug.rb", "test/bug2.rb", "test/files.rb", "test/helper.rb", "test/io.rb", "test/isolated/shared.rb", "test/isolated/test_mimic_after.rb", "test/isolated/test_mimic_alone.rb", "test/isolated/test_mimic_before.rb", "test/isolated/test_mimic_define.rb", "test/isolated/test_mimic_rails_after.rb", "test/isolated/test_mimic_rails_before.rb", "test/mod.rb", "test/perf.rb", "test/perf_compat.rb", "test/perf_fast.rb", "test/perf_file.rb", "test/perf_object.rb", "test/perf_saj.rb", "test/perf_scp.rb", "test/perf_simple.rb", "test/perf_strict.rb", "test/sample.rb", "test/sample/change.rb", "test/sample/dir.rb", "test/sample/doc.rb", "test/sample/file.rb", "test/sample/group.rb", "test/sample/hasprops.rb", "test/sample/layer.rb", "test/sample/line.rb", "test/sample/oval.rb", "test/sample/rect.rb", "test/sample/shape.rb", "test/sample/text.rb", "test/sample_json.rb", "test/struct.rb", "test/test_compat.rb", "test/test_debian.rb", "test/test_fast.rb", "test/test_file.rb", "test/test_gc.rb", "test/test_object.rb", "test/test_saj.rb", "test/test_scp.rb", "test/test_strict.rb", "test/test_various.rb", "test/test_writer.rb", "test/write_timebars.rb", "test/zip.rb"]
  s.homepage = "http://www.ohler.com/oj"
  s.licenses = ["MIT", "GPL-3.0"]
  s.rdoc_options = ["--main", "README.md"]
  s.rubyforge_project = "oj"
  s.rubygems_version = "2.2.2"
  s.summary = "A fast JSON parser and serializer."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.9"])
      s.add_development_dependency(%q<minitest>, ["~> 5"])
      s.add_development_dependency(%q<rails>, ["~> 4"])
    else
      s.add_dependency(%q<rake-compiler>, ["~> 0.9"])
      s.add_dependency(%q<minitest>, ["~> 5"])
      s.add_dependency(%q<rails>, ["~> 4"])
    end
  else
    s.add_dependency(%q<rake-compiler>, ["~> 0.9"])
    s.add_dependency(%q<minitest>, ["~> 5"])
    s.add_dependency(%q<rails>, ["~> 4"])
  end
end
