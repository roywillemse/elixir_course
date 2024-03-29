defmodule ServerWeb.Resolvers.CategoryResolver do
  alias Server.Categories.Category

  @spec all_categories(any, any, any) :: {:ok, list(%Category{}) | list()}
  def all_categories(_root, _args, _info) do
    {:ok, Category.list_categories()}
  end

  @spec one_category(any, any, any) :: {:error, any} | {:ok, %Category{}}
  def one_category(_root, %{slug: slug}, _info) do
    case Category.get_category_by_slug(slug) do
      nil -> {:error, "Category doesn't exist with this slug"}
      category -> {:ok, category}
    end
  end
end
