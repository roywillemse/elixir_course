defmodule Server.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset
  alias Server.Categories.Category

  schema "products" do
    field :description, :string
    field :name, :string
    field :slug, :string
    field :price, :decimal
    field :images, {:array, :string}
    belongs_to :category, Category

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
