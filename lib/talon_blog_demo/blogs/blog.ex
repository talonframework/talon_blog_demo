defmodule TalonBlogDemo.Blogs.Blog do
  use Ecto.Schema
  import Ecto.Changeset
  alias TalonBlogDemo.Blogs.Blog


  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "blogs_blogs" do
    field :name, :string
    field :description, :string
    belongs_to :user, TalonBlogDemo.Accounts.User
    field :active, :boolean, default: true
    # field :user_id, :binary_id

    timestamps()
  end

  @doc false
  def changeset(%Blog{} = blog, attrs) do
    blog
    |> cast(attrs, [:name, :description, :active, :user_id])
    |> validate_required([:name, :description, :user_id])
  end
end
