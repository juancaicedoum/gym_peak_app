require_relative "boot"

require "rails/all" # <-- Asegúrate de que solo quede esta línea (o 'rails/all' si estaba antes)

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PeakBoxApp # <-- Asegúrate de que sea PeakBoxApp, no PeakBoxLanding
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed after this file.
    #
    # E.g.
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Don't generate system test files.
    config.generators.system_tests = nil
  end
end
