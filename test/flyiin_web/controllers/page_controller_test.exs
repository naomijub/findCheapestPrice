defmodule FlyiinWeb.PageControllerTest do
  import Mox
  use FlyiinWeb.ConnCase
  alias Flight.Factory

  test "GET /findCheapestOffer", %{conn: conn} do
    expect(Flyiin.FlightMock, :post, fn "https://test.api.ba.com/selling-distribution/AirShopping/V2", _ -> Task.async(fn -> Factory.ba_flight end) end)
    expect(Flyiin.FlightMock, :post, fn "https://ndc-rct.airfranceklm.com/passenger/distribmgmt/001448v01/EXT", _ -> Task.async(fn ->Factory.af_flight end) end)

    resp = get(conn, "/findCheapestOffer/?origin=MUC&destination=GRU&departureDate=2019-12-12")

    assert resp.status == 200
    assert resp.resp_body == "{\"data\":{\"cheapestOffer\":{\"airline\":\"BA\",\"amount\":77.14}}}"
    assert resp.query_params ==  %{
      "departureDate" => "2019-12-12",
      "destination" => "GRU",
      "origin" => "MUC"
    }
  end
end
