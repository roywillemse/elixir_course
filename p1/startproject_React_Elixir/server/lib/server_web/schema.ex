defmodule Serverweb.Schema do
  use Absinthe.Schema
  import_types(Serverweb.Schema.Link)

  alias Serverweb.Resolvers

  query do
    @desc "Get all Links"
    field :all_links, list_of(:link) do
      resolve(&Resolvers.LinkResolver.all_links/3)
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
