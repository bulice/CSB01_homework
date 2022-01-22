defmodule ChatRoomApp.Repo.Migrations.CreateAccount do
  use Ecto.Migration

  def change do
    create table(:account, primary_key: false) do
      add :nickname, :string, null: false
      add :email, :string, null: false, primary_key: true
      add :passwd, :string, null: false
      add :create_time, :naive_datetime, null: false
    end

  end
end
