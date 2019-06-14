defmodule Fizzbot.Repo do
  use Ecto.Repo,
    otp_app: :fizzbot,
    adapter: Ecto.Adapters.Postgres
end
