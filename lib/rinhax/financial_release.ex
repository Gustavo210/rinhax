defmodule Rinhax.FinancialRelease do
  use Ecto.Schema

  schema "financial_releases" do
    field :description, :string
    field :type, :string
    field :value, :integer
    field :account_id, :integer
    timestamps()
  end
end
