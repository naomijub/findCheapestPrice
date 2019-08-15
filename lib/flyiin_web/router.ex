defmodule FlyiinWeb.Router do
  use FlyiinWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  forward "/healthcheck", Healthcheck
  forward "/", Background.Plug

  # scope "/", FlyiinWeb do
  #   pipe_through :browser

  #   get "/", PageController, :index
  # end

  # Other scopes may use custom stacks.
  # scope "/api", FlyiinWeb do
  #   pipe_through :api
  # end
end
