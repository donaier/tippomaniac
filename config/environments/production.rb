Tippomaniac::Application.configure do
  config.cache_classes = true
  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.serve_static_assets = true

  config.assets.js_compressor = :uglifier
  config.assets.css_compressor = :sass

  config.assets.compile = false

  config.assets.digest = true

  config.assets.version = '1.0'

  config.log_level = :info

  config.assets.precompile += %w( kuhsaft/cms/customizations.css kuhsaft/cms/customizations.js kuhsaft/cms/ck-config.js )

  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify

  config.log_formatter = ::Logger::Formatter.new
end
