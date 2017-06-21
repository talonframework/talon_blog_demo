use Mix.Config

config :talon_blog_demo, :talon,
  module: TalonBlogDemo,
  messages_backend: TalonBlogDemo.Web.Gettext,
  themes: ["admin-lte"],
  concerns: [TalonBlogDemo.Admin],

  web_namespace: Web


config :talon_blog_demo, TalonBlogDemo.Admin,
  resources: [
    TalonBlogDemo.Admin.Accounts.User,
    TalonBlogDemo.Admin.Blogs.Blog,
    TalonBlogDemo.Admin.Blogs.Post
  ],
  theme: "admin-lte",
  root_path: "lib/talon_blog_demo/talon",
  path_prefix: "",
  repo: TalonBlogDemo.Repo,
  router: TalonBlogDemo.Web.Router,
  endpoint: TalonBlogDemo.Web.Endpoint,
  schema_adapter: Talon.Schema.Adapters.Ecto

