defmodule Rinhax.Repo do
  use Ecto.Repo,
    otp_app: :rinhax,
    adapter: Ecto.Adapters.Postgres
end
