defmodule Abc.Repo.Migrations.CreateWeather do
  use Ecto.Migration

  def change do
    create table(:weather) do
      add :con, :string
      add :email, :string
      add :bio, :string
      add :number_of_pets, :integer
      add :temp_low, :integer

      timestamps()
    end

  end
end
