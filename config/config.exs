# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :talon_blog_demo,
  ecto_repos: [TalonBlogDemo.Repo]

# Configures the endpoint
config :talon_blog_demo, TalonBlogDemo.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0hCPEHpQ65Hkk68fc7ACwctAWJ9BV3SkpooQTlCUoDJMYRocOJNPA2QZ0fQLBY3s",
  render_errors: [view: TalonBlogDemo.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TalonBlogDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :talon_blog_demo, :generators,
  migration: true,
  binary_id: true,
  sample_binary_id: "11111111-1111-1111-1111-111111111111"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine

import_config "talon.exs"

