# -*- encoding: utf-8 -*-
# stub: http 0.6.1 ruby lib

Gem::Specification.new do |s|
  s.name = "http"
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tony", "Arcieri"]
  s.date = "2014-05-08"
  s.description = "An easy-to-use client library for making requests from Ruby. It uses a simple method chaining system for building requests, similar to Python's Requests."
  s.email = ["tony.arcieri@gmail.com"]
  s.files = [".coveralls.yml", ".gitignore", ".rspec", ".rubocop.yml", ".travis.yml", "CHANGES.md", "Gemfile", "Guardfile", "LICENSE.txt", "README.md", "Rakefile", "examples/parallel_requests_with_celluloid.rb", "http.gemspec", "lib/http.rb", "lib/http/authorization_header.rb", "lib/http/authorization_header/basic_auth.rb", "lib/http/authorization_header/bearer_token.rb", "lib/http/backports.rb", "lib/http/backports/base64.rb", "lib/http/backports/uri.rb", "lib/http/chainable.rb", "lib/http/client.rb", "lib/http/content_type.rb", "lib/http/errors.rb", "lib/http/headers.rb", "lib/http/headers/mixin.rb", "lib/http/mime_type.rb", "lib/http/mime_type/adapter.rb", "lib/http/mime_type/json.rb", "lib/http/options.rb", "lib/http/redirector.rb", "lib/http/request.rb", "lib/http/request/writer.rb", "lib/http/response.rb", "lib/http/response/body.rb", "lib/http/response/parser.rb", "lib/http/version.rb", "logo.png", "spec/http/authorization_header/basic_auth_spec.rb", "spec/http/authorization_header/bearer_token_spec.rb", "spec/http/authorization_header_spec.rb", "spec/http/backports/base64_spec.rb", "spec/http/backports/uri_spec.rb", "spec/http/client_spec.rb", "spec/http/content_type_spec.rb", "spec/http/headers/mixin_spec.rb", "spec/http/headers_spec.rb", "spec/http/options/body_spec.rb", "spec/http/options/form_spec.rb", "spec/http/options/headers_spec.rb", "spec/http/options/json_spec.rb", "spec/http/options/merge_spec.rb", "spec/http/options/new_spec.rb", "spec/http/options/proxy_spec.rb", "spec/http/options_spec.rb", "spec/http/redirector_spec.rb", "spec/http/request/writer_spec.rb", "spec/http/request_spec.rb", "spec/http/response/body_spec.rb", "spec/http/response_spec.rb", "spec/http_spec.rb", "spec/spec_helper.rb", "spec/support/example_server.rb", "spec/support/proxy_server.rb"]
  s.homepage = "https://github.com/tarcieri/http"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "HTTP should be easy"
  s.test_files = ["spec/http/authorization_header/basic_auth_spec.rb", "spec/http/authorization_header/bearer_token_spec.rb", "spec/http/authorization_header_spec.rb", "spec/http/backports/base64_spec.rb", "spec/http/backports/uri_spec.rb", "spec/http/client_spec.rb", "spec/http/content_type_spec.rb", "spec/http/headers/mixin_spec.rb", "spec/http/headers_spec.rb", "spec/http/options/body_spec.rb", "spec/http/options/form_spec.rb", "spec/http/options/headers_spec.rb", "spec/http/options/json_spec.rb", "spec/http/options/merge_spec.rb", "spec/http/options/new_spec.rb", "spec/http/options/proxy_spec.rb", "spec/http/options_spec.rb", "spec/http/redirector_spec.rb", "spec/http/request/writer_spec.rb", "spec/http/request_spec.rb", "spec/http/response/body_spec.rb", "spec/http/response_spec.rb", "spec/http_spec.rb", "spec/spec_helper.rb", "spec/support/example_server.rb", "spec/support/proxy_server.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<http_parser.rb>, ["~> 0.6.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<http_parser.rb>, ["~> 0.6.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<http_parser.rb>, ["~> 0.6.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
