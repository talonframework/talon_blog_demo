defmodule TalonBlogDemo.Blogs.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias TalonBlogDemo.Blogs.Post


  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "blogs_posts" do
    field :title, :string
    field :body, :string
    field :published, :boolean, default: false
    field :views, :integer, default: 0
    # field :blog_id, :binary_id
    belongs_to :blog, TalonBlogDemo.Blogs.Blog

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :body, :published, :views, :blog_id])
    |> validate_required([:title, :body, :published, :views])
  end
end
