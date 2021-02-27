defmodule ServerWeb.Schema.Objects do
  use Absinthe.Schema.Notation

  object :product do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :slug, non_null(:string)
    field :price, non_null(:string)
    field :description, non_null(:string)
    field :category, non_null(:category)
    field :images, list_of(:string)
    field :reviews, list_of(:review)
  end

  object :category do
    field :id, non_null(:id)
    field :description, non_null(:string)
    field :name, non_null(:string)
    field :slug, non_null(:string)
    field :products, list_of(:product)
  end

  object :review do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :description, non_null(:string)
    field :rating, non_null(:string)
    field :product_id, non_null(:string)
  end
end
