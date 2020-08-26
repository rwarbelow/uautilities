module Uautilities
  class Engine < ::Rails::Engine
    isolate_namespace Uautilities
    config.assets.paths << File.expand_path("../../assets/stylesheets", __FILE__)
    config.assets.paths << File.expand_path("../../assets/javascripts", __FILE__)
    
    initializer "uautilities.assets.precompile" do |app|
      app.config.assets.precompile += %w( application.scss )
      app.config.assets.precompile += %w( application.css )
    end
  end
end
