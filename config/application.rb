require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SimpleTwitter
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
<<<<<<< HEAD
=======
    config.time_zone = "Asia/Taipei"
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
<<<<<<< HEAD
=======
    # Don't generate system test files.
    config.generators.system_tests = nil
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
  end
end
