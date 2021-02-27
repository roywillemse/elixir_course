defmodule Server.Reviews.Review do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, warn: false
  alias Server.Products.Product
  alias Server.Repo

  schema "reviews" do
    field :name, :string
    field :description, :string
    field :rating, :integer
    belongs_to :product, Product

    timestamps()
  end

  @doc false
  def changeset(review, attrs) do
    review
    |> cast(attrs, [:name, :description, :rating, :product_id])
    |> validate_required([:name, :description, :rating, :product_id])
  end

  def list_reviews do
    __MODULE__
    |> Repo.all()
  end

  def get_review(id), do: __MODULE__ |> Repo.get(id)

  def create_review(attrs \\ %{}) do
    %__MODULE__{}
    |> changeset(attrs)
    |> Repo.insert()
  end

  def update_review(%__MODULE__{} = review, attrs) do
    review
    |> changeset(attrs)
    |> Repo.update()
  end

  def change_review(%__MODULE__{} = review, attrs \\ %{}) do
    changeset(review, attrs)
  end
end
