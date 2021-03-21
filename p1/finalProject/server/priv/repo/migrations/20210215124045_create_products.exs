defmodule Server.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :slug, :string
      add :description, :text
      add :price, :decimal
      add :images, {:array, :string}
      add :category_id, references(:categories, on_delete: :nothing)
      timestamps()
    end

  end
end
