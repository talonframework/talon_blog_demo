defmodule TalonBlogDemo.Repo.Migrations.CreateTalonBlogDemo.Blogs.Post do
  use Ecto.Migration

  def change do
    create table(:blogs_posts, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :title, :string
      add :body, :text
      add :published, :boolean, default: false, null: false
      add :views, :integer, default: 0
      add :blog_id, references(:blogs_blogs, on_delete: :delete_all, type: :binary_id)

      timestamps()
    end

    create index(:blogs_posts, [:blog_id])
  end
end
