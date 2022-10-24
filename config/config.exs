# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :super_admin,
  ecto_repos: [SuperAdmin.Repo]

# Configures the endpoint
config :super_admin, SuperAdminWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TIbJBRh+hVcFi7y03Pk94kEi9BqMlL+o9ZKjbYSxFweD0d1cCAF5ptxUVvQEZ+hx",
  render_errors: [view: SuperAdminWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SuperAdmin.PubSub,
  live_view: [signing_salt: "pnvzluKL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
