defmodule FlyiinWeb.Router do
  use FlyiinWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end
  scope "/findCheapestOffer", FlyiinWeb do
    pipe_through :api

    get "/", CheapestController, :show
  end

  forward "/healthcheck", Healthcheck
  forward "/", Background.Plug
end
