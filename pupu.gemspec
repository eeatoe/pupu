require_relative "lib/pupu/version"

Gem::Specification.new do |spec|
  spec.name        = "pupu"
  spec.version     = Pupu::VERSION
  spec.authors     = [ "Sergey" ]
  spec.email       = [ "eeatoe@gmail.com" ]
  spec.homepage    = "https://example.com"
  spec.summary     = "test library."
  spec.description = "test library."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://example.com"
  spec.metadata["changelog_uri"] = "https://example.com"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.5.1"
  spec.add_dependency "importmap-rails"
  spec.add_dependency "turbo-rails"
  spec.add_dependency "stimulus-rails"
  spec.add_dependency "view_component"
  spec.add_dependency "tailwindcss-rails"
end
