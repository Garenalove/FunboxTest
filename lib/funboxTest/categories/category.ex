defmodule FunboxTest.Categories.Category do
  use Ecto.Schema
  import Ecto.Changeset
  require Logger

  schema "category" do
    field :name, :string
    field :description, :string
    has_many :libraries, FunboxTest.Libraries.Library
  end

  @fields ~w(name description)

  def changeset(struct, params \\ %{}) do
    Logger.info(inspect(struct))
    data_error = struct
    |> cast(params, @fields)
    |> validate_required(@fields)
    Logger.error(inspect(data_error))
    data_error
  end

end
