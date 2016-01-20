# -*- encoding: utf-8 -*-
# stub: rexec 1.6.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rexec"
  s.version = "1.6.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Samuel Williams"]
  s.date = "2014-01-28"
  s.description = "\t\tRExec stands for Remote Execute and provides support for executing processes\n\t\tboth locally and remotely. It provides a number of different tools to assist\n\t\twith running Ruby code, including remote code execution, daemonization, task\n\t\tmanagement and priviledge management.\n"
  s.email = ["samuel.williams@oriontransfer.co.nz"]
  s.executables = ["daemon-exec"]
  s.files = [".travis.yml", "Gemfile", "README.md", "bin/daemon-exec", "lib/rexec.rb", "lib/rexec/client.rb", "lib/rexec/connection.rb", "lib/rexec/daemon.rb", "lib/rexec/daemon/base.rb", "lib/rexec/daemon/controller.rb", "lib/rexec/daemon/process_file.rb", "lib/rexec/environment.rb", "lib/rexec/priviledges.rb", "lib/rexec/reverse_io.rb", "lib/rexec/server.rb", "lib/rexec/task.rb", "lib/rexec/to_cmd.rb", "lib/rexec/version.rb", "rakefile.rb", "rexec.gemspec", "test/client.rb", "test/daemon.rb", "test/helper.rb", "test/interrupt.rb", "test/listing_example.rb", "test/task.rb", "test/test_daemon.rb", "test/test_remote_server.rb", "test/test_server.rb", "test/test_task.rb"]
  s.homepage = "http://www.codeotaku.com/projects/rexec"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "RExec assists with and manages the execution of child and daemon tasks."
  s.test_files = ["test/client.rb", "test/daemon.rb", "test/helper.rb", "test/interrupt.rb", "test/listing_example.rb", "test/task.rb", "test/test_daemon.rb", "test/test_remote_server.rb", "test/test_server.rb", "test/test_task.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<rainbow>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rainbow>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rainbow>, [">= 0"])
  end
end
