defmodule FunboxTest.Repo.Migrations.CreateLibraries do
  use Ecto.Migration

  def change do
    create table(:library) do
      add :stars_count, :string
      add :days_since_last_update, :integer
      add :name, :string
      add :ling, :string
      add :description, :string
      add :category_id, references(:category)
      timestamps
    end
  end
end
