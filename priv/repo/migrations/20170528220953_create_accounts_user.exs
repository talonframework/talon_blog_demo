defmodule TalonBlogDemo.Repo.Migrations.CreateTalonBlogDemo.Accounts.User do
  use Ecto.Migration

  def change do
    create table(:accounts_users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :first_name, :string
      add :last_name, :string
      add :username, :string
      add :email, :string
      add :active, :boolean, default: true, null: false

      timestamps()
    end

  end
end
