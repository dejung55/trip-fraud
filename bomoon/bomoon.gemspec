$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bomoon/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bomoon"
  s.version     = Bomoon::VERSION
  s.authors     = ["seobomoon"]
  s.email       = ["sbm1992@naver.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Bomoon."
  s.description = "TODO: Description of Bomoon."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end
