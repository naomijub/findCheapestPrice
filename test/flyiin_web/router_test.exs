defmodule FlyiinWeb.RouterTest do
  use ExUnit.Case
  use FlyiinWeb.ConnCase

  describe "Healthcheck" do
    test "Healthcheck returns Server is UP", context do
      res = get(context.conn, "/healthcheck")

      assert res.resp_body == "Server is UP"
    end
  end

  describe "Not Found Route" do
    test "Root path returns 404", context do
      res = get(context.conn, "/")

      assert res.status == 404
    end

    test "any path returns 404", context do
      res = get(context.conn, "/hdusaidh")

      assert res.status == 404
    end
  end
end