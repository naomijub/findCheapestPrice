defmodule Flyiin.Cheapest.MainTest do
  import Mox
  use ExUnit.Case, async: true
  alias Flyiin.Cheapest.Main
  alias Flyiin.Cheapest.Airlines

  describe "Json data structure" do
    test "when airlines list is empty" do
      assert Main.cheapest_airline([]) == "{\"data\":{\"cheapestOffer\":{}}}"
    end

    test "when airlines list size is one" do
      assert Main.cheapest_airline([%{airline: "BA", amount: 55}]) ==
               "{\"data\":{\"cheapestOffer\":{\"airline\":\"BA\",\"amount\":55}}}"
    end

    test "when airlines list size greater than one" do
      airlines = [
        %{airline: "BA", amount: 55},
        %{airline: "LA", amount: 43},
        %{airline: "JJ", amount: 74}
      ]

      assert Main.cheapest_airline(airlines) ==
               "{\"data\":{\"cheapestOffer\":{\"airline\":\"LA\",\"amount\":43}}}"
    end
  end

  describe "fetch airlines" do
    test "fetch airlines by code" do
      expect(Flyiin.FlightMock,:post, 2, fn _, _ -> (fn -> 1 end) end)

      assert length(Main.fetch_airlines_pricing(Airlines.get_airlines, "MUC", "LHT", "2019-03-18")) == 2
    end
  end
end
