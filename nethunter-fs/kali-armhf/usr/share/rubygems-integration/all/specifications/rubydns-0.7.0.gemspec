# -*- encoding: utf-8 -*-
# stub: rubydns 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rubydns"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Samuel Williams"]
  s.date = "2015-07-01"
  s.description = "\t\tRubyDNS is a high-performance DNS server which can be easily integrated into\n\t\tother projects or used as a stand-alone daemon (via RExec). By default it uses\n\t\trule-based pattern matching. Results can be hard-coded, computed, fetched from\n\t\ta remote DNS server or fetched from a local cache, depending on requirements.\n\n\t\tIn addition, RubyDNS includes a high-performance asynchronous DNS resolver\n\t\tbuilt on top of EventMachine. This module can be used by itself in client\n\t\tapplications without using the full RubyDNS server stack.\n"
  s.email = ["samuel.williams@oriontransfer.co.nz"]
  s.executables = ["rd-dns-check", "rd-resolve-test"]
  s.files = ["Gemfile", "README.md", "Rakefile", "bin", "bin/rd-dns-check", "bin/rd-resolve-test", "debian", "debian/changelog", "debian/compat", "debian/control", "debian/copyright", "debian/patches", "debian/patches/drop-git-ls-files.patch", "debian/patches/series", "debian/ruby-rubydns", "debian/ruby-rubydns.debhelper.log", "debian/ruby-rubydns.docs", "debian/ruby-tests.rb", "debian/rules", "debian/source", "debian/source/format", "debian/watch", "lib", "lib/rubydns", "lib/rubydns.rb", "lib/rubydns/binary_string.rb", "lib/rubydns/chunked.rb", "lib/rubydns/extensions", "lib/rubydns/extensions/logger.rb", "lib/rubydns/extensions/resolv.rb", "lib/rubydns/extensions/string.rb", "lib/rubydns/handler.rb", "lib/rubydns/message.rb", "lib/rubydns/resolver.rb", "lib/rubydns/server.rb", "lib/rubydns/system.rb", "lib/rubydns/transaction.rb", "lib/rubydns/version.rb", "rubydns.gemspec", "test", "test/examples", "test/examples/dropping-dns.rb", "test/examples/fortune-dns.rb", "test/examples/geoip-dns.rb", "test/examples/soa-dns.rb", "test/examples/test-dns-1.rb", "test/examples/test-dns-2.rb", "test/examples/wikipedia-dns.rb", "test/helper.rb", "test/hosts.txt", "test/test_daemon.rb", "test/test_domains.txt", "test/test_message.rb", "test/test_passthrough.rb", "test/test_resolver.rb", "test/test_rules.rb", "test/test_slow_server.rb", "test/test_system.rb", "test/test_truncation.rb"]
  s.homepage = "http://www.codeotaku.com/projects/rubydns"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.2.2"
  s.summary = "An easy to use DNS server and resolver for Ruby."
  s.test_files = ["test/examples", "test/examples/dropping-dns.rb", "test/examples/fortune-dns.rb", "test/examples/geoip-dns.rb", "test/examples/soa-dns.rb", "test/examples/test-dns-1.rb", "test/examples/test-dns-2.rb", "test/examples/wikipedia-dns.rb", "test/helper.rb", "test/hosts.txt", "test/test_daemon.rb", "test/test_domains.txt", "test/test_message.rb", "test/test_passthrough.rb", "test/test_resolver.rb", "test/test_rules.rb", "test/test_slow_server.rb", "test/test_system.rb", "test/test_truncation.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rexec>, ["~> 1.6.2"])
      s.add_runtime_dependency(%q<eventmachine>, ["~> 1.0.0"])
    else
      s.add_dependency(%q<rexec>, ["~> 1.6.2"])
      s.add_dependency(%q<eventmachine>, ["~> 1.0.0"])
    end
  else
    s.add_dependency(%q<rexec>, ["~> 1.6.2"])
    s.add_dependency(%q<eventmachine>, ["~> 1.0.0"])
  end
end
