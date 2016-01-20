# -*- encoding: utf-8 -*-
# stub: em-websocket 0.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "em-websocket"
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ilya Grigorik", "Martyn Loughran"]
  s.date = "2014-08-09"
  s.description = "EventMachine based WebSocket server"
  s.email = ["ilya@igvita.com", "me@mloughran.com"]
  s.files = ["examples/echo.rb", "examples/multicast.rb", "examples/ping.rb", "examples/test.html", "lib/em-websocket", "lib/em-websocket.rb", "lib/em-websocket/close03.rb", "lib/em-websocket/close05.rb", "lib/em-websocket/close06.rb", "lib/em-websocket/close75.rb", "lib/em-websocket/connection.rb", "lib/em-websocket/debugger.rb", "lib/em-websocket/framing03.rb", "lib/em-websocket/framing04.rb", "lib/em-websocket/framing05.rb", "lib/em-websocket/framing07.rb", "lib/em-websocket/framing76.rb", "lib/em-websocket/handler.rb", "lib/em-websocket/handler03.rb", "lib/em-websocket/handler05.rb", "lib/em-websocket/handler06.rb", "lib/em-websocket/handler07.rb", "lib/em-websocket/handler08.rb", "lib/em-websocket/handler13.rb", "lib/em-websocket/handler75.rb", "lib/em-websocket/handler76.rb", "lib/em-websocket/handshake.rb", "lib/em-websocket/handshake04.rb", "lib/em-websocket/handshake75.rb", "lib/em-websocket/handshake76.rb", "lib/em-websocket/masking04.rb", "lib/em-websocket/message_processor_03.rb", "lib/em-websocket/message_processor_06.rb", "lib/em-websocket/version.rb", "lib/em-websocket/websocket.rb", "spec/helper.rb", "spec/integration", "spec/integration/common_spec.rb", "spec/integration/draft03_spec.rb", "spec/integration/draft05_spec.rb", "spec/integration/draft06_spec.rb", "spec/integration/draft13_spec.rb", "spec/integration/draft75_spec.rb", "spec/integration/draft76_spec.rb", "spec/integration/gte_03_examples.rb", "spec/integration/shared_examples.rb", "spec/unit", "spec/unit/framing_spec.rb", "spec/unit/handshake_spec.rb", "spec/unit/masking_spec.rb"]
  s.homepage = "http://github.com/igrigorik/em-websocket"
  s.rubyforge_project = "em-websocket"
  s.rubygems_version = "2.2.2"
  s.summary = "EventMachine based WebSocket server"
  s.test_files = ["spec/unit", "spec/unit/masking_spec.rb", "spec/unit/framing_spec.rb", "spec/unit/handshake_spec.rb", "spec/helper.rb", "spec/integration", "spec/integration/draft06_spec.rb", "spec/integration/common_spec.rb", "spec/integration/draft75_spec.rb", "spec/integration/shared_examples.rb", "spec/integration/gte_03_examples.rb", "spec/integration/draft05_spec.rb", "spec/integration/draft03_spec.rb", "spec/integration/draft76_spec.rb", "spec/integration/draft13_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<eventmachine>, [">= 0.12.9"])
      s.add_runtime_dependency(%q<http_parser.rb>, ["~> 0.6.0"])
    else
      s.add_dependency(%q<eventmachine>, [">= 0.12.9"])
      s.add_dependency(%q<http_parser.rb>, ["~> 0.6.0"])
    end
  else
    s.add_dependency(%q<eventmachine>, [">= 0.12.9"])
    s.add_dependency(%q<http_parser.rb>, ["~> 0.6.0"])
  end
end
