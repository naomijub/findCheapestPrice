defmodule Flyiin.Cheapest.MainTest do
  use ExUnit.Case
  alias Flyiin.Cheapest.Main

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
end
