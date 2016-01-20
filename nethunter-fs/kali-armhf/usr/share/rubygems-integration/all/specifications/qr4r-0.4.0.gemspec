# -*- encoding: utf-8 -*-
# stub: qr4r 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "qr4r"
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jon Rogers"]
  s.date = "2013-12-19"
  s.description = "QR PNG Generator for Ruby. Leveraging RQRCode and MojoMagick modules"
  s.email = ["jon@rcode5.com"]
  s.files = [".gitignore", ".rvmrc", "Gemfile", "Gemfile.lock", "README.md", "Rakefile", "examples/generate_qr4r.rb", "init.rb", "lib/qr4r.rb", "lib/qr4r.rb~", "lib/qr4r/version.rb", "lib/qr4r/version.rb~", "qr4r.gemspec", "test/qr4r_test.rb"]
  s.homepage = "http://github.com/rcode5/qr4r"
  s.rubyforge_project = "qr4r"
  s.rubygems_version = "2.2.2"
  s.summary = "qr4r-0.4.0"
  s.test_files = ["test/qr4r_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rqrcode>, [">= 0"])
      s.add_runtime_dependency(%q<mojo_magick>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rqrcode>, [">= 0"])
      s.add_dependency(%q<mojo_magick>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rqrcode>, [">= 0"])
    s.add_dependency(%q<mojo_magick>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
