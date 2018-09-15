# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :raspberry_pi,
  ecto_repos: [RaspberryPi.Repo]

# Configures the endpoint
config :raspberry_pi, RaspberryPiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1233TYfznodm8ZyMuUuTiCqf1c1m3bPU3Qp+W0Q4d8IowoTqV8+k3sB9YohwHYy/",
  render_errors: [view: RaspberryPiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RaspberryPi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
