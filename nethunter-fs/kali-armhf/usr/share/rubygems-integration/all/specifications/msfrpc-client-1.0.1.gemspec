# -*- encoding: utf-8 -*-
# stub: msfrpc-client 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "msfrpc-client"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["HD Moore"]
  s.date = "2011-10-18"
  s.description = "This gem provides a Ruby client API to access the Rapid7 Metasploit Pro RPC service."
  s.email = ["hdm@metasploit.com"]
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["README.markdown", "Rakefile", "examples/msfrpc_irb.rb", "examples/msfrpc_pro_report.rb", "lib/msfrpc-client.rb", "lib/msfrpc-client/client.rb", "lib/msfrpc-client/constants.rb"]
  s.homepage = "http://www.metasploit.com/"
  s.licenses = ["BSD"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby API for the Rapid7 Metasploit Pro RPC service"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<msgpack>, [">= 0.4.5"])
      s.add_runtime_dependency(%q<librex>, [">= 0.0.32"])
    else
      s.add_dependency(%q<msgpack>, [">= 0.4.5"])
      s.add_dependency(%q<librex>, [">= 0.0.32"])
    end
  else
    s.add_dependency(%q<msgpack>, [">= 0.4.5"])
    s.add_dependency(%q<librex>, [">= 0.0.32"])
  end
end
