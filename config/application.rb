require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)



module Vendela
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    config.assets.initialize_on_precompile = false
    config.serve_static_assets = true
    # -- all .rb files in that directory are automatically loaded.
  end
end
