defmodule Flyiin.Cheapest.Http.Main do
  @moduledoc """
  Consumer for Http.Behaviour
  """

  @http Application.get_env(:flyiin, :executor)
  def post_args(url, body, headers) do
    opts = [{:body, body}, {:headers, headers}]
    @http.post(url, opts)
  end
end
