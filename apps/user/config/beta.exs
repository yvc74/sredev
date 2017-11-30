use Mix.Config

config :user, User.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: "100",
  ssl: true
