defmodule Flyiin.Cheapest.MainTest do
  import Mox
  use ExUnit.Case, async: true
  alias Flight.Factory
  alias Flyiin.Cheapest.Airlines
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

  describe "fetch airlines" do
    test "fetch airlines by code" do
      expect(Flyiin.FlightMock, :post, 2, fn _, _ -> fn -> 1 end end)

      function_call =
        Main.fetch_airlines_pricing(Airlines.get_airlines(), "MUC", "LHT", "2019-03-18")

      assert length(function_call) == 2
      assert [{"BA", _, _}, {"AFKL", _, _}] = function_call
    end

    test "fetch airlines when there is no airlines code" do
      expect(Flyiin.FlightMock, :post, 2, fn _, _ -> fn -> 1 end end)

      function_call = Main.fetch_airlines_pricing([], "MUC", "LHT", "2019-03-18")

      assert function_call == []
    end

    test "Consolidate requests" do
      expect(
        Flyiin.FlightMock,
        :post,
        fn "https://test.api.ba.com/selling-distribution/AirShopping/V2", _ ->
          Task.async(fn -> Factory.ba_flight() end)
        end
      )

      expect(
        Flyiin.FlightMock,
        :post,
        fn "https://ndc-rct.airfranceklm.com/passenger/distribmgmt/001448v01/EXT", _ ->
          Task.async(fn -> Factory.af_flight() end)
        end
      )

      function_call =
        Main.fetch_airlines_pricing(Airlines.get_airlines(), "MUC", "LHT", "2019-03-18")

      assert Main.consolidate_best_prices(function_call) ==
               "{\"data\":{\"cheapestOffer\":{\"airline\":\"BA\",\"amount\":77.14}}}"
    end

    test "Consolidate requests for non existing airlines" do
      function_call = Main.fetch_airlines_pricing([], "MUC", "LHT", "2019-03-18")

      assert Main.consolidate_best_prices(function_call) == "{\"data\":{\"cheapestOffer\":{}}}"
    end

    test "Consolidate requests when one of them is not 200" do
      expect(
        Flyiin.FlightMock,
        :post,
        fn "https://test.api.ba.com/selling-distribution/AirShopping/V2", _ ->
          Task.async(fn -> %HTTPotion.Response{body: "blob", status_code: 503} end)
        end
      )

      expect(
        Flyiin.FlightMock,
        :post,
        fn "https://ndc-rct.airfranceklm.com/passenger/distribmgmt/001448v01/EXT", _ ->
          Task.async(fn -> Factory.af_flight() end)
        end
      )

      function_call =
        Main.fetch_airlines_pricing(Airlines.get_airlines(), "MUC", "LHT", "2019-03-18")

      assert Main.consolidate_best_prices(function_call) ==
               "{\"data\":{\"cheapestOffer\":{\"airline\":\"AFKL\",\"amount\":509.11}}}"
    end
  end
end
