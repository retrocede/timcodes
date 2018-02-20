# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :timcodes,
  ecto_repos: [Timcodes.Repo]

# Configures the endpoint
config :timcodes, TimcodesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VvjKk5tkrB44kpzqmrI4MbpX6cQtDG+NEiStnt5867AdBylcUeuAGRrntvbExIxx",
  render_errors: [view: TimcodesWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Timcodes.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
