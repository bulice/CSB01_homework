defmodule ChatRoomApp.Repo do
  use Ecto.Repo,
    otp_app: :chat_room_app,
    adapter: Ecto.Adapters.Postgres
end
