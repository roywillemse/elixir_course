defmodule ServerWeb.Resolvers.ProductResolver do
  alias Server.Products.Product

  @spec all_products(any, any, any) :: {:ok, list(%Product{}) | list()}
  def all_products(_root, _args, _info) do
    {:ok, Product.list_products()}
  end

  @spec search_products(any, any, any) :: {:ok, list(%Product{}) | list()}
  def search_products(_root, %{search: search}, _info) do
    {:ok, Product.search_products(search)}
  end

  @spec one_product(any, any, any) :: {:error, any} | {:ok, %Product{}}
  def one_product(_root, %{slug: slug}, _info) do
    case Product.get_product_by_slug(slug) do
      nil -> {:error, "Product doesn't exist"}
      product -> {:ok, product}
    end
  end
end
