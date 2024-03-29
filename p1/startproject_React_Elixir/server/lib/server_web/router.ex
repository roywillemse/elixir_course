defmodule ServerWeb.Router do
  use ServerWeb, :router

  pipeline :graphql do
    plug Corsica, origins: "*", log: [rejected: :error], allow_headers: :all
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :graphql

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: Serverweb.Schema,
      interface: :playground

    forward "/", Absinthe.Plug, schema: Serverweb.Schema
  end
end
