Routes = Rack::Builder.new do
  use Pliny::Middleware::RescueErrors, raise: Config.raise_errors?
  use Pliny::Middleware::CORS
  use Pliny::Middleware::RequestID
  use Pliny::Middleware::RequestStore, store: Pliny::RequestStore
  use Pliny::Middleware::Timeout, timeout: Config.timeout if Config.timeout > 0
  use Pliny::Middleware::Versioning,
      default: Config.versioning_default,
      app_name: Config.versioning_app_name if Config.versioning?
  use Rack::Deflater
  use Rack::MethodOverride
  use Rack::SSL if Config.force_ssl?
  use Committee::Middleware::RequestValidation, schema: JSON.parse(File.read(File.expand_path('../../docs/schema.json', __FILE__)))

  use Pliny::Router do
    mount Endpoints::Posts
  end

  # root app; but will also handle some defaults like 404
  run Endpoints::Root
end
