# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fizzbot,
  ecto_repos: [Fizzbot.Repo]

# Configures the endpoint
config :fizzbot, FizzbotWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "i0sPneSmgxHd3hcdmYt/BZyWILQAoCY+37nsjeCTYiKF5lG3Hm7b6Z/XeO85O1qv",
  render_errors: [view: FizzbotWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Fizzbot.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "i0sPneSmgxHd3hcdmYt"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
