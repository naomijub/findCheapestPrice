defmodule Flyiin.Cheapest.Http.MainTest do
  import Mox
  use ExUnit.Case, async: true
  alias Flight.Factory
  alias Flyiin.Cheapest.Http.Main

  # setup :verify_on_exit!

  describe "Post request" do
    test "request body for SCL-> MIA 12-03-2021" do
      expected = Factory.ba_flight()

      expect(
        Flyiin.FlightMock,
        :post,
        fn "https://test.api.ba.com/selling-distribution/AirShopping/V2", _ -> expected end
      )

      actual =
        Main.post_args(
          "https://test.api.ba.com/selling-distribution/AirShopping/V2",
          "test body: SCL-> MIA 12-03-2021",
          [
            {"Client-Key", "key"},
            {"Content-Type", "application/xml"},
            {"Soapaction", "AirShoppingV01"}
          ]
        )

      assert expected == actual
      assert Map.get(actual, :status_code) == 200
    end
  end
end
