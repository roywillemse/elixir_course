defmodule Server.Categories.Category do
  use Ecto.Schema
  import Ecto.Changeset
  alias Server.Products.Product

  schema "categories" do
    field :description, :string
    field :name, :string
    field :slug, :string
    has_many :products, Product

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:name, :slug, :description])
    |> validate_required([:name, :slug, :description])
  end
end
