# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :room_decorate,
  ecto_repos: [RoomDecorate.Repo]

# Configures the endpoint
config :room_decorate, RoomDecorateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XmDhb/D7kSncbztLCCB6DNbxYLtEsiRvGHtt7SuPh0VlyrE45aOEMPCEkRluQprJ",
  render_errors: [view: RoomDecorateWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RoomDecorate.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
