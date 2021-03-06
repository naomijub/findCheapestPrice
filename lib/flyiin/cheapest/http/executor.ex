defmodule Flyiin.Cheapest.Http.Executor do
  @moduledoc """
  Implementarion for Http.Behaviour
  """
  alias Flyiin.Cheapest.Http.Behaviour
  alias HTTPotion

  @behaviour Behaviour

  @impl Behaviour
  def post(url, opts) do
    Task.async(fn -> HTTPotion.post(url, opts) end)
  end
end
