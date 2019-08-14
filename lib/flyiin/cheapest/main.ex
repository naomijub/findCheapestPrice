defmodule Flyiin.Cheapest.Main do
  @moduledoc """
  Module responsable for determine the cheapest 
  """

  def cheapest_airline(airlines) when length(airlines) == 0 do
    Jason.encode!(%{data: %{cheapestOffer: %{}}})
  end

  def cheapest_airline(airlines) when length(airlines) == 1 do
    Jason.encode!(%{data: %{cheapestOffer: List.first(airlines)}})
  end
end