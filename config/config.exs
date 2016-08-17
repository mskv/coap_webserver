# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :coap_webserver,
  ecto_repos: [CoapWebserver.Repo]

# Configures the endpoint
config :coap_webserver, CoapWebserver.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7hzVjGV+yqYZyVegzDcRtkFt4DTiYosJJ+6qPgEnvg812G9m7MVqDpQ99YRzp6Hg",
  render_errors: [view: CoapWebserver.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CoapWebserver.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
