defmodule Server.Repo.Migrations.CreateProducts do
  use Ecto.Migration
  alias Server.Categories.Category

  def change do
    create table(:products) do
      add :name, :string
      add :slug, :string
      add :description, :text
      add :price, :decimal
      add :images, {:array, :string}
      add has_one :category, Category

      timestamps()
    end

  end
end
