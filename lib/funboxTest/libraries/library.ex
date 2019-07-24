defmodule FunboxTest.Libraries.Library do
  use Ecto.Schema
  import Ecto.Changeset
  require Logger

  schema "library" do
    field :stars_count, :string
    field :days_since_last_update, :integer
    field :name, :string
    field :link, :string
    field :description, :string
    belongs_to :category, FunboxTest.Categories.Category
    timestamps()
  end

  @fields ~w(stars_count days_since_last_update name link description category_id)

  def changeset(struct, params \\ %{}) do
    Logger.info(inspect(struct))
    data_error = struct
    |> cast(params, @fields)
    |> validate_required(@fields)
    Logger.error(inspect(data_error))
    data_error
  end

end
