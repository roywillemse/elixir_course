defmodule Server.Repo.Migrations.CreateCategories do
  use Ecto.Migration
  alias Server.Products.Product

  def change do
    create table(:categories) do
      add :name, :string
      add :slug, :string
      add :description, :text
      add has_many :products, Product

      timestamps()
    end

  end
end
