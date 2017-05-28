defmodule TalonBlogDemo.Blogs.Blog do
  use Ecto.Schema
  import Ecto.Changeset
  alias TalonBlogDemo.Blogs.Blog


  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "blogs_blogs" do
    field :active, :boolean, default: true
    field :description, :string
    field :name, :string
    # field :user_id, :binary_id
    belongs_to :user, TalonBlogDemo.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(%Blog{} = blog, attrs) do
    blog
    |> cast(attrs, [:name, :description, :active, :user_id])
    |> validate_required([:name, :description, :user_id])
  end
end
