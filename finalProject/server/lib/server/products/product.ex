defmodule Server.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, warn: false
  alias Server.Categories.Category
  alias Server.Repo

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
    |> cast(attrs, [:name, :description, :slug, :price])
    |> validate_required([:name, :description, :slug, :price])
  end

  @doc """
  Returns the list of products.

  ## Examples

      iex> list_products()
      [%Product{}, ...]

  """
  def list_products do
    __MODULE__
    |> Repo.all()
    |> Repo.preload(:category)
  end

  @doc """
  Gets a single product.

  Raises `Ecto.NoResultsError` if the Product does not exist.

  ## Examples

      iex> get_product!(123)
      %Product{}

      iex> get_product!(456)
      ** (Ecto.NoResultsError)

  """
  def get_product(id), do: __MODULE__ |> Repo.get(id) |> Repo.preload(:category)

  def get_product_by_slug(slug),
    do: __MODULE__ |> Repo.get_by(slug: slug) |> Repo.preload(:category)

  @doc """
  Creates a product.

  ## Examples

      iex> create_product(%{field: value})
      {:ok, %Product{}}

      iex> create_product(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_product(attrs \\ %{}) do
    %__MODULE__{}
    |> changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a product.

  ## Examples

      iex> update_product(product, %{field: new_value})
      {:ok, %Product{}}

      iex> update_product(product, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_product(%__MODULE__{} = product, attrs) do
    product
    |> changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a product.

  ## Examples

      iex> delete_product(product)
      {:ok, %Product{}}

      iex> delete_product(product)
      {:error, %Ecto.Changeset{}}

  """
  def delete_product(%__MODULE__{} = product) do
    Repo.delete(product)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking product changes.

  ## Examples

      iex> change_product(product)
      %Ecto.Changeset{data: %Product{}}

  """
  def change_product(%__MODULE__{} = product, attrs \\ %{}) do
    changeset(product, attrs)
  end
end
