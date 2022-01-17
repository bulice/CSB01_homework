import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :chat_room_app, ChatRoomApp.Repo,
  username: "postgres",
  password: "111111",
  hostname: "localhost",
  database: "chat_room_app_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  port: 5432,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chat_room_app, ChatRoomAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "iDE1BTDvOdPDKRgZx/dABeZ/OEUkC4Ojscy3QCg5cupWTzYfwmdOkbONlSTw62jW",
  server: false

# In test we don't send emails.
config :chat_room_app, ChatRoomApp.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
