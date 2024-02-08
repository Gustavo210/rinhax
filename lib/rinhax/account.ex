defmodule Rinhax.Account do
  use Ecto.Schema

  schema "accounts" do
    field :limit, :integer
    timestamps()
  end
end
