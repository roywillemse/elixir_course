defmodule Serverweb.Resolvers.LinkResolver do
  alias Server.Links

  def all_links(_root, _args, _info) do
    {:ok, Links.list_links()}
  end

  def create_link(_root, args, _info) do
    case Links.create_link(args) do
      {:ok, link} ->
        {:ok, link}

      _error ->
        {:error, "Could not create link"}
    end
  end
end
