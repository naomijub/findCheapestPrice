defmodule Flyiin.Cheapest.Http.Behaviour do
  @moduledoc """
  Predefined behaviours for post request
  """
  @callback post(String.t(), list()) :: map()
end
