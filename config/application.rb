require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Myrottenpotatoes
  class Application < Rails::Application
    config.load_defaults 7.0
    
    # Configuration for the application, engines, and railties goes here.
    config.time_zone = 'UTC'
  end
end