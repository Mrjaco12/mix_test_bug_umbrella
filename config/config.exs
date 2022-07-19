# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

# Configure Mix tasks and generators
config :mix_test_bug,
  ecto_repos: [MixTestBug.Repo]

config :mix_test_bug_web,
  ecto_repos: [MixTestBug.Repo],
  generators: [context_app: :mix_test_bug]

# Configures the endpoint
config :mix_test_bug_web, MixTestBugWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: MixTestBugWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MixTestBug.PubSub,
  live_view: [signing_salt: "c8xI28M4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
