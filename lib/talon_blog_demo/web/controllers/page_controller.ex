defmodule TalonBlogDemo.Web.PageController do
  use TalonBlogDemo.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
