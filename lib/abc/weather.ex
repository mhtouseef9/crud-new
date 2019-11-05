defmodule Abc.Weather do
  use Ecto.Schema
  import Ecto.Changeset

  schema "weather" do
    field :city, :string
    field :prcp, :float, default: 0.0
    field :temp_hi, :integer
    field :temp_lo, :integer

    timestamps()
  end


  @doc false
  def changeset(weather, attrs) do
    weather
    |> cast(attrs, [:city, :temp_lo, :temp_hi, :prcp])
    |> validate_required([:city, :temp_lo, :temp_hi, :prcp])
  end
end
