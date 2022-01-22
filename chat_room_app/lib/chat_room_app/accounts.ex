defmodule ChatRoomApp.Accounts do
  import Ecto.Query, warn: false
  alias ChatRoomApp.Repo
  alias ChatRoomApp.Accounts.Account

  def new_account(nickname: nickname, email: email, passwd: passwd) do
    %Account{}
    |> Account.changeset(%{nickname: nickname, email: email, passwd: passwd, create_time: DateTime.utc_now()})
    |> Repo.insert()
  end

  def list_account() do
    Account |> Repo.all()
  end


end
