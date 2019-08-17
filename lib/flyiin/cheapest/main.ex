defmodule Flyiin.Cheapest.Main do
  @moduledoc """
  Module responsable for determine the cheapest 
  """
  alias Flyiin.Cheapest.Airlines
  alias Flyiin.Cheapest.Http.Main, as: HTTPm

  defp extract_json(airline) do
    Jason.encode!(%{data: %{cheapestOffer: airline}})
  end

  def cheapest_airline(airlines) when airlines == [] do
    extract_json(%{})
  end

  def cheapest_airline(airlines) when length(airlines) == 1 do
    extract_json(List.first(airlines))
  end

  def cheapest_airline(airlines) do
    airline = Enum.min_by(airlines, &Map.get(&1, :amount))
    extract_json(airline)
  end

  def fetch_airlines_pricing(airlines, origin, destination, date) do
    Airlines.get_available_airlines()
    |> Enum.map(fn airline ->
      info = Enum.find(airlines, fn x -> Map.fetch(x, :name) == {:ok, airline} end)
      body = apply(Airlines, Map.get(info, :body), [origin, destination, date])
      {airline, Task.async(HTTPm.post_args(Map.get(info, :url), body, Map.get(info, :headers)))}
    end)
    |> Enum.to_list()
  end
end
