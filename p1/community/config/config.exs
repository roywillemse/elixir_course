# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :community,
  ecto_repos: [Community.Repo]

# Configures the endpoint
config :community, CommunityWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LnuYiOcZFdnjs/8Y+NkLUtktmojk6npMQOvCGpjs3GO4/RNW8Bfg+os5DRkoKLR9",
  render_errors: [view: CommunityWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Community.PubSub,
  live_view: [signing_salt: "9XxvsO1P"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
