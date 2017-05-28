defmodule TalonBlogDemo.Repo.Migrations.CreateTalonBlogDemo.Blogs.Blog do
  use Ecto.Migration

  def change do
    create table(:blogs_blogs, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :description, :text
      add :active, :boolean, default: true, null: false
      add :user_id, references(:accounts_users, on_delete: :delete_all, type: :binary_id)

      timestamps()
    end

    create index(:blogs_blogs, [:user_id])
  end
end
