require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module NewStem
  class Application < Rails::Application
    config.load_defaults 5.1
    config.time_zone                = 'Europe/Minsk'
    
    config.i18n.default_locale      = :ua
    config.i18n.available_locales   = %i( ua en )
    config.i18n.fallbacks           = true
  end
end
