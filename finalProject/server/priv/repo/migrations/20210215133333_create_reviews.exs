defmodule Server.Repo.Migrations.CreateReviews do
  use Ecto.Migration

  def change do
    create table(:reviews) do
      add :name, :string
      add :description, :text
      add :rating, :integer
      add :product_id, references(:products, on_delete: :nothing)
      timestamps()
    end

  end
end
