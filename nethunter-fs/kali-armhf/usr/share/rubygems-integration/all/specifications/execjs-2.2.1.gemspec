# -*- encoding: utf-8 -*-
# stub: execjs 2.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "execjs"
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sam Stephenson", "Josh Peek"]
  s.date = "2014-07-30"
  s.description = "ExecJS lets you run JavaScript code from Ruby."
  s.email = ["sstephenson@gmail.com", "josh@joshpeek.com"]
  s.files = ["LICENSE", "README.md", "lib/execjs", "lib/execjs.rb", "lib/execjs/disabled_runtime.rb", "lib/execjs/encoding.rb", "lib/execjs/external_runtime.rb", "lib/execjs/johnson_runtime.rb", "lib/execjs/module.rb", "lib/execjs/mustang_runtime.rb", "lib/execjs/ruby_racer_runtime.rb", "lib/execjs/ruby_rhino_runtime.rb", "lib/execjs/runtime.rb", "lib/execjs/runtimes.rb", "lib/execjs/support", "lib/execjs/support/jsc_runner.js", "lib/execjs/support/jscript_runner.js", "lib/execjs/support/json2.js", "lib/execjs/support/node_runner.js", "lib/execjs/support/spidermonkey_runner.js", "lib/execjs/version.rb"]
  s.homepage = "https://github.com/sstephenson/execjs"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Run JavaScript code from Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
