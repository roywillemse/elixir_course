defmodule ServerWeb.Schema do
  use Absinthe.Schema
  import_types(ServerWeb.Schema.Objects)

  alias ServerWeb.Resolvers

  query do
    @desc "Get all Links"
    field :all_links, list_of(:link) do
      resolve(&Resolvers.LinkResolver.all_links/3)
    end

    @desc "Get all Categories"
    field :all_categories, list_of(:category) do
      resolve(&Resolvers.CategoryResolver.all_categories/3)
    end

    @desc "Get all Products"
    field :all_products, list_of(:product) do
      resolve(&Resolvers.ProductResolver.all_products/3)
    end
  end

  mutation do
    @desc "Create new link"
    field :create_link, :link do
      arg(:url, non_null(:string))
      arg(:description, non_null(:string))

      resolve(&Resolvers.LinkResolver.create_link/3)
    end
  end
end
