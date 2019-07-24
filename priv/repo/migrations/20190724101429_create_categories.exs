defmodule FunboxTest.Repo.Migrations.CreateCategories do
  use Ecto.Migration

  def change do
    create table(:category) do
      add :name, :string
      add :description, :string
      timestamps
    end
  end
end
