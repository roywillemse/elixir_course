defmodule ServerWeb.Schema do
  use Absinthe.Schema
  import_types(ServerWeb.Schema.Objects)

  alias ServerWeb.Resolvers

  query do
    @desc "Get all Categories"
    field :all_categories, list_of(:category) do
      resolve(&Resolvers.CategoryResolver.all_categories/3)
    end

    @desc "Get one Category"
    field :one_category, :category do
      arg :slug, non_null(:string)
      resolve(&Resolvers.CategoryResolver.one_category/3)
    end

    @desc "Get all Products"
    field :all_products, list_of(:product) do
      resolve(&Resolvers.ProductResolver.all_products/3)
    end

    @desc "Get one Product"
    field :one_product, :product do
      arg :slug, non_null(:string)
      resolve(&Resolvers.ProductResolver.one_product/3)
    end
  end

  mutation do
  end
end
