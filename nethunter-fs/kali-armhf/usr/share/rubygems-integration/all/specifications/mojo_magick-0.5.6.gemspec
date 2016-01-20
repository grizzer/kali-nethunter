# -*- encoding: utf-8 -*-
# stub: mojo_magick 0.5.6 ruby lib

Gem::Specification.new do |s|
  s.name = "mojo_magick"
  s.version = "0.5.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Steve Midgley", "Elliot Nelson", "Jon Rogers"]
  s.date = "2015-05-31"
  s.description = "Simple Ruby stateless module interface to imagemagick."
  s.email = ["science@misuse.org", "jon@rcode5.com"]
  s.files = [".gitignore", ".ruby-version", "Gemfile", "Gemfile.lock", "LICENSE.txt", "README.md", "Rakefile", "examples/animated_gif.rb", "examples/composite.rb", "init.rb", "lib/image_magick/fonts.rb", "lib/image_magick/resource_limits.rb", "lib/initializers/hash.rb", "lib/mojo_magick.rb", "lib/mojo_magick/command_status.rb", "lib/mojo_magick/errors.rb", "lib/mojo_magick/font.rb", "lib/mojo_magick/opt_builder.rb", "lib/mojo_magick/util/parser.rb", "lib/mojo_magick/version.rb", "mojo_magick.gemspec", "test/fixtures/5742.jpg", "test/fixtures/not_an_image.jpg", "test/fixtures/zero_byte_image.jpg", "test/font_test.rb", "test/fonts_test.rb", "test/mojo_magick_test.rb", "test/opt_builder_test.rb", "test/parser_test.rb", "test/resource_limits_test.rb", "test/test_helper.rb"]
  s.homepage = "http://github.com/rcode5/mojo_magick"
  s.licenses = ["MIT"]
  s.post_install_message = "\nThanks for installing MojoMagick - keepin it simple!\n\n*** To make this gem work, you need a few binaries!\nMake sure you've got ImageMagick available.  http://imagemagick.org\nIf you plan to build images with text (using the \"label\" method) you'll need freetype and ghostscript as well.\nCheck out http://www.freetype.org and http://ghostscript.com respectively for installation info.\n\n"
  s.rubyforge_project = "mojo_magick"
  s.rubygems_version = "2.2.2"
  s.summary = "mojo_magick-0.5.6"
  s.test_files = ["test/fixtures/5742.jpg", "test/fixtures/not_an_image.jpg", "test/fixtures/zero_byte_image.jpg", "test/font_test.rb", "test/fonts_test.rb", "test/mojo_magick_test.rb", "test/opt_builder_test.rb", "test/parser_test.rb", "test/resource_limits_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<rspec-expectations>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rspec-expectations>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rspec-expectations>, [">= 0"])
  end
end
