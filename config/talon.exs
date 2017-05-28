use Mix.Config

config :talon, resources: [
    TalonBlogDemo.Talon.Accounts.User,
    TalonBlogDemo.Talon.Blogs.Blog,
    TalonBlogDemo.Talon.Blogs.Post,
  ],
  module: TalonBlogDemo,
  messages_backend: TalonBlogDemo.Web.Gettext,
  theme: "admin_lte",

  web_namespace: Web,

  schema_adapter: Talon.Schema.Adapters.Ecto
