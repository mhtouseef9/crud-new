defmodule Abc.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :number_of_pets, :integer
      add :temp_lo, :integer

      timestamps()
    end

  end
end
