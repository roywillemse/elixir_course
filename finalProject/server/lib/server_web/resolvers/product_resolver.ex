defmodule ServerWeb.Resolvers.ProductResolver do
  alias Server.Products

  def all_products(_root, _args, _info) do
    {:ok, Products.list_products()}
  end
end
