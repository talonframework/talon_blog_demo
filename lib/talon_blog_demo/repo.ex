defmodule TalonBlogDemo.Repo do
  use Ecto.Repo, otp_app: :talon_blog_demo
  use Scrivener, page_size: 15  # <--- add this

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, opts) do
    {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  end
end
