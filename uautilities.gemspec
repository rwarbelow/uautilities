$:.push File.expand_path("lib", __dir__)

require "uautilities/version"

Gem::Specification.new do |spec|
  spec.name        = "uautilities"
  spec.version     = Uautilities::VERSION
  spec.authors     = ["Guild Education"]
  spec.email       = ["engineering@guildeducation.com"]
  spec.summary     = "Provides shared partials for Partner Pages and Nxt Pages"
  spec.description = "n/a"
  spec.license     = "MIT"

  if !spec.respond_to?(:metadata)
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.0", ">= 6.0.0"
end
