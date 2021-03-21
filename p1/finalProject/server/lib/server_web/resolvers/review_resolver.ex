defmodule ServerWeb.Resolvers.ReviewResolver do
  alias Server.Reviews.Review

  def all_reviews(_root, _args, _info) do
    {:ok, Review.list_reviews()}
  end

  def create_review(_root, review, _info) do
    case Review.create_review(review) do
      nil -> {:error, "Review not created"}
      response -> response
    end
  end
end
