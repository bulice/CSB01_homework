defmodule ChatRoomApp.Accounts.Account do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:email, :string, []}
  schema "account" do
    field :nickname, :string, null: false
    field :passwd, :string, null: false
    field :create_time, :naive_datetime, null: false
  end

  @doc """
  false
  """
  def changeset(account, attrs \\ %{}) do
    account
    |> cast(attrs, [:nickname, :email, :passwd, :create_time])
    |> validate_required([:nickname, :email, :passwd, :create_time])
    |> validate_format(:email, ~r/@/)
  end

end
