defmodule Flyiin.Cheapest.MainTest do
  use ExUnit.Case
  alias Flyiin.Cheapest.Main

  describe "Json data structure" do
    test "when airlines list is empty" do
      assert Main.cheapest_airline([]) == "{\"data\":{\"cheapestOffer\":{}}}"
    end

    test "when airlines list is size one" do
      assert Main.cheapest_airline([%{airline: "BA", amount: 55}]) == 
          "{\"data\":{\"cheapestOffer\":{\"airline\":\"BA\",\"amount\":55}}}"
    end
  end
end