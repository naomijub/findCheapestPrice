defmodule Background.Plug do
  @moduledoc """
  Plug Module with the objective to make Not FOund Available to every wrong route.
  """
  def init(opts), do: opts

  def call(conn, opts) do
    conn
    |> Plug.Conn.assign(:name, Keyword.get(opts, :name, "Background Job"))
    |> Background.Router.call(opts)
  end
end

defmodule Background.Router do
  @moduledoc """
  Router associated with Background.Plug
  """
  use Plug.Router

  plug :match
  plug :dispatch

  match(_, do: send_resp(conn, 404, "Not found"))
end
