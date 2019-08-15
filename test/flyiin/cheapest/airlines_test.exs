defmodule Flyiin.Cheapest.AirlinesTest do
  use ExUnit.Case
  alias Flyiin.Cheapest.Airlines

  describe "BA" do
    test "request body for SCL-> MIA 12-03-2021" do
      assert Airlines.ba_request_body("SCL", "MIA", "12-03-2021") ==
               "<s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\"><s:Body xmlns=\"http://www.iata.org/IATA/EDIST\"><AirShoppingRQ Version=\"3.0\" xmlns=\"http://www.iata.org/IATA/EDIST\"><PointOfSale><Location><CountryCode>DE</CountryCode></Location></PointOfSale><Document/><Party><Sender><TravelAgencySender><Name>test agent</Name><IATA_Number>00002004</IATA_Number><AgencyID>test agent</AgencyID></TravelAgencySender></Sender></Party><Travelers><Traveler><AnonymousTraveler><PTC Quantity=\"1\">ADT</PTC></AnonymousTraveler></Traveler></Travelers><CoreQuery><OriginDestinations><OriginDestination><Departure><AirportCode>SCL</AirportCode><Date>12-03-2021</Date></Departure><Arrival><AirportCode>MIA</AirportCode></Arrival></OriginDestination></OriginDestinations></CoreQuery></AirShoppingRQ></s:Body></s:Envelope>"
    end

    test "request body other values NKT-> MUC 13-03-2021" do
      assert Airlines.ba_request_body("NKT", "MUC", "13-03-2021") ==
               "<s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\"><s:Body xmlns=\"http://www.iata.org/IATA/EDIST\"><AirShoppingRQ Version=\"3.0\" xmlns=\"http://www.iata.org/IATA/EDIST\"><PointOfSale><Location><CountryCode>DE</CountryCode></Location></PointOfSale><Document/><Party><Sender><TravelAgencySender><Name>test agent</Name><IATA_Number>00002004</IATA_Number><AgencyID>test agent</AgencyID></TravelAgencySender></Sender></Party><Travelers><Traveler><AnonymousTraveler><PTC Quantity=\"1\">ADT</PTC></AnonymousTraveler></Traveler></Travelers><CoreQuery><OriginDestinations><OriginDestination><Departure><AirportCode>NKT</AirportCode><Date>13-03-2021</Date></Departure><Arrival><AirportCode>MUC</AirportCode></Arrival></OriginDestination></OriginDestinations></CoreQuery></AirShoppingRQ></s:Body></s:Envelope>"
    end
  end

  describe "AF" do
    test "request body for SCL-> MIA 12-03-2021" do
      assert Airlines.af_request_body("SCL", "MIA", "12-03-2021") ==
               "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\"><soapenv:Header/><soapenv:Body xmlns=\"http://www.iata.org/IATA/EDIST/2017.1\"><AirShoppingRQ Version=\"17.1\"><Document/><Party><Sender><TravelAgencySender><Name>Test</Name><PseudoCity>PARMM211L</PseudoCity><IATA_Number>12345675</IATA_Number><AgencyID>id</AgencyID></TravelAgencySender></Sender><Recipient><ORA_Recipient><AirlineID>AF</AirlineID></ORA_Recipient></Recipient></Party><CoreQuery><OriginDestinations><OriginDestination><Departure><AirportCode>SCL</AirportCode><Date>12-03-2021</Date></Departure><Arrival><AirportCode>MIA</AirportCode></Arrival></OriginDestination></OriginDestinations></CoreQuery><Preference><CabinPreferences><CabinType><Code>1</Code></CabinType></CabinPreferences></Preference><DataLists><PassengerList><Passenger><PTC>ADT</PTC></Passenger></PassengerList></DataLists></AirShoppingRQ></soapenv:Body></soapenv:Envelope>"
    end

    test "request body other values NKT-> MUC 13-03-2021" do
      assert Airlines.af_request_body("NKT", "MUC", "13-03-2021") ==
               "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\"><soapenv:Header/><soapenv:Body xmlns=\"http://www.iata.org/IATA/EDIST/2017.1\"><AirShoppingRQ Version=\"17.1\"><Document/><Party><Sender><TravelAgencySender><Name>Test</Name><PseudoCity>PARMM211L</PseudoCity><IATA_Number>12345675</IATA_Number><AgencyID>id</AgencyID></TravelAgencySender></Sender><Recipient><ORA_Recipient><AirlineID>AF</AirlineID></ORA_Recipient></Recipient></Party><CoreQuery><OriginDestinations><OriginDestination><Departure><AirportCode>NKT</AirportCode><Date>13-03-2021</Date></Departure><Arrival><AirportCode>MUC</AirportCode></Arrival></OriginDestination></OriginDestinations></CoreQuery><Preference><CabinPreferences><CabinType><Code>1</Code></CabinType></CabinPreferences></Preference><DataLists><PassengerList><Passenger><PTC>ADT</PTC></Passenger></PassengerList></DataLists></AirShoppingRQ></soapenv:Body></soapenv:Envelope>"
    end
  end
end
