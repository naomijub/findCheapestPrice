defmodule FlyiinWeb.CheapestController do
  @moduledoc """
  This controller responds to the path `/findCheapestOffer/?origin=<IATA>&destination=<IATA>&departureDate=<DATE>`
  """
  use FlyiinWeb, :controller
  alias Flyiin.Cheapest.Main

  def show(conn, %{
        "origin" => origin,
        "destination" => destination,
        "departureDate" => departureDate
      }) do
    find(conn, origin, destination, departureDate)
  end

  def show(conn, ctx) do
    conn
    |> send_resp(400, "{\"message\":\"Arguments must be origin, destination and departureDate\"}")
  end

  def find(conn, origin, destination, _)
      when not (byte_size(origin) == 3) or not (byte_size(destination) == 3) do
    conn
    |> put_resp_content_type("Application/json")
    |> send_resp(400, "{\"message\":\"Origin and Destiniation must ber IATA codes\"}")
  end

  def find(conn, _, _, date) when not (byte_size(date) == 10) do
    conn
    |> put_resp_content_type("Application/json")
    |> send_resp(400, "{\"message\":\"Origin and Destiniation must ber IATA codes\"}")
  end

  def find(conn, origin, destination, date) do
    conn
    |> put_resp_content_type("Application/json")
    |> send_resp(200, Main.find(origin, destination, date))
  end
end
