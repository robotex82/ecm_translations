module Ecm
  module Translations
    class Engine < ::Rails::Engine
      config.generators do |g|
        g.test_framework :rspec, :fixture => false
        g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      end

      initializer :ecm_translations_engine do
        ::ActiveAdmin.setup do |config|
          config.load_paths << File.join(self.root, 'app/admin')
        end # ::ActiveAdmin.setup
      end if defined?(::ActiveAdmin) # initializer :ecm_translations_engine do
    end # class Engine < ::Rails::Engine
  end # module Translations
end # module Ecm
