$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ecm/translations/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ecm_translations"
  s.version     = Ecm::Translations::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/robotex82/ecm_translations"
  s.summary     = "ECM Translations."
  s.description = "ECM Translations."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "i18n-active_record"

  s.add_development_dependency "sqlite3"

  # Development Server
  s.add_development_dependency "thin"

  # Documentation
  s.add_development_dependency "yard"

  # Dummy app
  s.add_development_dependency 'activeadmin'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'i18n_routing'

  # Localization
  s.add_development_dependency 'localeapp'

  # Tests
  s.add_development_dependency 'test-unit'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'rspec-rails', '~> 2.0'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'factory_girl_rails', '~> 1.0'

  # Test automation
  s.add_development_dependency 'guard-rails'
  s.add_development_dependency 'rb-inotify', '~> 0.9'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-bundler'
end
