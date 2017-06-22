defmodule TalonBlogDemo.Web.Router do
  use TalonBlogDemo.Web, :router
  # use Talon.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # your app's routes
  # scope "/talon", TalonBlogDemo.Web do
  #   pipe_through :browser
  #   talon_routes()
  # end

  scope "/", TalonBlogDemo.Web do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", TalonBlogDemo.Web do
  #   pipe_through :api
  # end
end
