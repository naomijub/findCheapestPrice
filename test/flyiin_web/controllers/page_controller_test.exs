defmodule FlyiinWeb.PageControllerTest do
  import Mox
  use FlyiinWeb.ConnCase
  alias Flight.Factory

  test "GET /findCheapestOffer", %{conn: conn} do
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

    resp = get(conn, "/findCheapestOffer/?origin=MUC&destination=GRU&departureDate=2019-12-12")

    assert resp.status == 200

    assert resp.resp_body ==
             "{\"data\":{\"cheapestOffer\":{\"airline\":\"BA\",\"amount\":77.14}}}"

    assert resp.query_params == %{
             "departureDate" => "2019-12-12",
             "destination" => "GRU",
             "origin" => "MUC"
           }
  end

  test "GET /findCheapestOffer with wrong IATAs", %{conn: conn} do
    resp1 = get(conn, "/findCheapestOffer/?origin=MUCD&destination=GRU&departureDate=2019-12-12")
    resp2 = get(conn, "/findCheapestOffer/?origin=MUC&destination=GRUD&departureDate=2019-12-12")

    assert resp1.status == 400
    assert resp2.status == 400
  end

  test "GET /findCheapestOffer with wrong Date", %{conn: conn} do
    resp1 = get(conn, "/findCheapestOffer/?origin=MUC&destination=GRU&departureDate=2019-8-12")

    assert resp1.status == 400
  end

  test "GET /findCheapestOffer with wrong arguments", %{conn: conn} do
    resp1 = get(conn, "/findCheapestOffer/?origin=MUC&destination=GRU&date=2019-8-12")

    assert resp1.status == 400
  end
end
