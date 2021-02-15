defmodule ServerWeb.Resolvers.CategoryResolver do
  alias Server.Categories

  def all_categories(_root, _args, _info) do
    {:ok, Categories.list_categories()}
  end
end
