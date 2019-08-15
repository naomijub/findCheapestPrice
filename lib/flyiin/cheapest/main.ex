defmodule Flyiin.Cheapest.Main do
  @moduledoc """
  Module responsable for determine the cheapest 
  """

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
end
