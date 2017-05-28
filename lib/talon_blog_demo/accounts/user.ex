defmodule TalonBlogDemo.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias TalonBlogDemo.Accounts.User


  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "accounts_users" do
    field :first_name, :string
    field :last_name, :string
    field :username, :string
    field :email, :string
    field :active, :boolean, default: true
    has_many :blogs, TalonBlogDemo.Blogs.Blog

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :username, :email, :active])
    |> validate_required([:first_name, :last_name, :username, :email])
  end
end
