# -*- encoding: utf-8 -*-
# stub: msgpack 0.5.8 ruby lib
# stub: ext/msgpack/extconf.rb

Gem::Specification.new do |s|
  s.name = "msgpack"
  s.version = "0.5.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sadayuki Furuhashi"]
  s.date = "2013-12-14"
  s.description = "MessagePack is a binary-based efficient object serialization library. It enables to exchange structured objects between many languages like JSON. But unlike JSON, it is very fast and small."
  s.email = "frsyuki@gmail.com"
  s.extensions = ["ext/msgpack/extconf.rb"]
  s.files = [".gitignore", "ChangeLog", "Gemfile", "README.rdoc", "Rakefile", "doclib/msgpack.rb", "doclib/msgpack/buffer.rb", "doclib/msgpack/core_ext.rb", "doclib/msgpack/error.rb", "doclib/msgpack/packer.rb", "doclib/msgpack/unpacker.rb", "ext/msgpack/buffer.c", "ext/msgpack/buffer.h", "ext/msgpack/buffer_class.c", "ext/msgpack/buffer_class.h", "ext/msgpack/compat.h", "ext/msgpack/core_ext.c", "ext/msgpack/core_ext.h", "ext/msgpack/extconf.rb", "ext/msgpack/packer.c", "ext/msgpack/packer.h", "ext/msgpack/packer_class.c", "ext/msgpack/packer_class.h", "ext/msgpack/rbinit.c", "ext/msgpack/rmem.c", "ext/msgpack/rmem.h", "ext/msgpack/sysdep.h", "ext/msgpack/sysdep_endian.h", "ext/msgpack/sysdep_types.h", "ext/msgpack/unpacker.c", "ext/msgpack/unpacker.h", "ext/msgpack/unpacker_class.c", "ext/msgpack/unpacker_class.h", "lib/msgpack.rb", "lib/msgpack/version.rb", "msgpack.gemspec", "spec/buffer_io_spec.rb", "spec/buffer_spec.rb", "spec/cases.json", "spec/cases.msg", "spec/cases_compact.msg", "spec/cases_spec.rb", "spec/format_spec.rb", "spec/packer_spec.rb", "spec/random_compat.rb", "spec/spec_helper.rb", "spec/unpacker_spec.rb"]
  s.homepage = "http://msgpack.org/"
  s.licenses = ["Apache 2.0"]
  s.rubyforge_project = "msgpack"
  s.rubygems_version = "2.2.2"
  s.summary = "MessagePack, a binary-based efficient data interchange format."
  s.test_files = ["spec/buffer_io_spec.rb", "spec/buffer_spec.rb", "spec/cases.json", "spec/cases.msg", "spec/cases_compact.msg", "spec/cases_spec.rb", "spec/format_spec.rb", "spec/packer_spec.rb", "spec/random_compat.rb", "spec/spec_helper.rb", "spec/unpacker_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.8.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.11"])
      s.add_development_dependency(%q<json>, ["~> 1.7"])
      s.add_development_dependency(%q<yard>, ["~> 0.8.2"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_dependency(%q<rake-compiler>, ["~> 0.8.3"])
      s.add_dependency(%q<rspec>, ["~> 2.11"])
      s.add_dependency(%q<json>, ["~> 1.7"])
      s.add_dependency(%q<yard>, ["~> 0.8.2"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
    s.add_dependency(%q<rake-compiler>, ["~> 0.8.3"])
    s.add_dependency(%q<rspec>, ["~> 2.11"])
    s.add_dependency(%q<json>, ["~> 1.7"])
    s.add_dependency(%q<yard>, ["~> 0.8.2"])
  end
end
