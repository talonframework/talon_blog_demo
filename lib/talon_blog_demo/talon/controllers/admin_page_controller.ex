defmodule TalonBlogDemo.Web.TalonPageController do
  use TalonBlogDemo.Web, :controller
  use Talon.PageController, concern: TalonBlogDemo.Admin

  plug Talon.Plug.LoadConcern, concern: TalonBlogDemo.Admin, web_namespace: Web
  plug Talon.Plug.Theme
  plug Talon.Plug.Layout, layout: {Elixir.TalonBlogDemo.Admin.AdminLte.Web.LayoutView, "app.html"}
  plug Talon.Plug.View
  
  # TODO
  
end
