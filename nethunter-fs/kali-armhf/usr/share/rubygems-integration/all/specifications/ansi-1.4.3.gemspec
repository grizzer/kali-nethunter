# -*- encoding: utf-8 -*-
# stub: ansi 1.4.3 ruby lib

Gem::Specification.new do |s|
  s.name = "ansi"
  s.version = "1.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Thomas Sawyer", "Florian Frank"]
  s.date = "2012-06-28"
  s.description = "The ANSI project is a superlative collection of ANSI escape code related libraries\nenabling ANSI colorization and stylization of console output. Byte for byte\nANSI is the best ANSI code library available for the Ruby programming\nlanguage."
  s.email = ["transfire@gmail.com"]
  s.extra_rdoc_files = ["HISTORY.rdoc", "DEMO.rdoc", "COPYING.rdoc", "README.rdoc"]
  s.files = [".ruby", ".yardopts", "COPYING.rdoc", "Config.rb", "DEMO.rdoc", "HISTORY.rdoc", "README.rdoc", "demo/01_ansicode.rdoc", "demo/02_core.rdoc", "demo/03_logger.rdoc", "demo/04_progressbar.rdoc", "demo/05_mixin.rdoc", "demo/06_string.rdoc", "demo/07_columns.rdoc", "demo/08_table.rdoc", "demo/09_diff.rdoc", "demo/10_bbcode.rdoc", "demo/11_terminal.rdoc", "demo/applique/ae.rb", "demo/applique/output.rb", "lib/ansi.rb", "lib/ansi.yml", "lib/ansi/bbcode.rb", "lib/ansi/chain.rb", "lib/ansi/chart.rb", "lib/ansi/code.rb", "lib/ansi/columns.rb", "lib/ansi/constants.rb", "lib/ansi/core.rb", "lib/ansi/diff.rb", "lib/ansi/hexdump.rb", "lib/ansi/logger.rb", "lib/ansi/mixin.rb", "lib/ansi/progressbar.rb", "lib/ansi/string.rb", "lib/ansi/table.rb", "lib/ansi/terminal.rb", "lib/ansi/terminal/curses.rb", "lib/ansi/terminal/stty.rb", "lib/ansi/terminal/termios.rb", "lib/ansi/terminal/win32.rb", "lib/ansi/version.rb", "test/case_ansicode.rb", "test/case_bbcode.rb", "test/case_mixin.rb", "test/case_progressbar.rb", "test/test_helper.rb"]
  s.homepage = "http://rubyworks.github.com/ansi"
  s.rubygems_version = "2.2.2"
  s.summary = "ANSI at your fingertips!"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<detroit>, [">= 0"])
      s.add_development_dependency(%q<qed>, [">= 0"])
      s.add_development_dependency(%q<lemon>, [">= 0"])
    else
      s.add_dependency(%q<detroit>, [">= 0"])
      s.add_dependency(%q<qed>, [">= 0"])
      s.add_dependency(%q<lemon>, [">= 0"])
    end
  else
    s.add_dependency(%q<detroit>, [">= 0"])
    s.add_dependency(%q<qed>, [">= 0"])
    s.add_dependency(%q<lemon>, [">= 0"])
  end
end
