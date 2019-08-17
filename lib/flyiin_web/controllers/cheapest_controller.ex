defmodule FlyiinWeb.CheapestController do
  @moduledoc """
  This controller responds to the path `/findCheapestOffer/?origin=<IATA>&destination=<IATA>&departureDate=<DATE>`
  """
  use FlyiinWeb, :controller
  alias Flyiin.Cheapest.Main

  def show(conn, %{"origin" => origin, "destination" => destination, "departureDate" => departureDate}) do
    conn
    |> put_resp_content_type("Application/json")
    |> send_resp(200, Main.find(origin, destination, departureDate))
  end
end
