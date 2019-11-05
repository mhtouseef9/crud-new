defmodule Abc.Repo.Migrations.CreateWeatherCond do
  use Ecto.Migration

  def change do
    create table(:weather_cond) do
      add :con, :string
      add :temp_low, :integer
      add :temp_hi, :integer

      timestamps()
    end

  end
end
