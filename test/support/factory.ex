defmodule Flight.Factory do
  @moduledoc """
  A Factory module to return expected values from http request
  """
  import HTTPotion

  def ba_flight do
    %HTTPotion.Response{
      body:
        "<soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"><soap:Body><AirShoppingRS xmlns=\"http://www.iata.org/IATA/EDIST\" Version=\"16.1\"><Document><ReferenceVersion>2016.1</ReferenceVersion></Document><Success/><ShoppingResponseID><ResponseID>2019-08-14T21:16:08.505Z</ResponseID></ShoppingResponseID><OffersGroup><AirlineOffers><TotalOfferQuantity>28</TotalOfferQuantity><Owner>BA</Owner><AirlineOffer RequestedDateInd=\"true\"><OfferID Owner=\"BA\">OFFER1</OfferID><TotalPrice><SimpleCurrencyPrice Code=\"EUR\">94.14</SimpleCurrencyPrice></TotalPrice><PricedOffer><OfferPrice OfferItemID=\"1\"><RequestedDate><PriceDetail><TotalAmount><SimpleCurrencyPrice Code=\"EUR\">94.14</SimpleCurrencyPrice></TotalAmount><BaseAmount Code=\"EUR\">57.00</BaseAmount><Taxes><Total Code=\"EUR\">37.14</Total></Taxes></PriceDetail><Associations><AssociatedTraveler><TravelerReferences>SH1</TravelerReferences></AssociatedTraveler></Associations></RequestedDate></OfferPrice><Associations><ApplicableFlight><FlightSegmentReference ref=\"BA3292\"><ClassOfService refs=\"FBCODE1\"><Code SeatsLeft=\"9\">N</Code><MarketingName>Euro Traveller</MarketingName></ClassOfService></FlightSegmentReference><OriginDestinationReferences>OD1</OriginDestinationReferences><FlightReferences>Flight1</FlightReferences></ApplicableFlight></Associations></PricedOffer></AirlineOffer><AirlineOffer RequestedDateInd=\"true\"><OfferID Owner=\"BA\">OFFER2</OfferID><TotalPrice><SimpleCurrencyPrice Code=\"EUR\">114.14</SimpleCurrencyPrice></TotalPrice><PricedOffer><OfferPrice OfferItemID=\"1\"><RequestedDate><PriceDetail><TotalAmount><SimpleCurrencyPrice Code=\"EUR\">114.14</SimpleCurrencyPrice></TotalAmount><BaseAmount Code=\"EUR\">77.00</BaseAmount><Taxes><Total Code=\"EUR\">37.14</Total></Taxes></PriceDetail><Associations><AssociatedTraveler><TravelerReferences>SH1</TravelerReferences></AssociatedTraveler></Associations></RequestedDate></OfferPrice><Associations><ApplicableFlight><FlightSegmentReference ref=\"BA3292\"><ClassOfService refs=\"FBCODE2\"><Code SeatsLeft=\"9\">N</Code><MarketingName>Euro Traveller</MarketingName></ClassOfService></FlightSegmentReference><OriginDestinationReferences>OD1</OriginDestinationReferences><FlightReferences>Flight1</FlightReferences></ApplicableFlight></Associations></PricedOffer></AirlineOffer><AirlineOffer RequestedDateInd=\"true\"><OfferID Owner=\"BA\">OFFER3</OfferID><TotalPrice><SimpleCurrencyPrice Code=\"EUR\">155.14</SimpleCurrencyPrice></TotalPrice><PricedOffer><OfferPrice OfferItemID=\"1\"><RequestedDate><PriceDetail><TotalAmount><SimpleCurrencyPrice Code=\"EUR\">155.14</SimpleCurrencyPrice></TotalAmount><BaseAmount Code=\"EUR\">118.00</BaseAmount><Taxes><Total Code=\"EUR\">37.14</Total></Taxes></PriceDetail><Associations><AssociatedTraveler><TravelerReferences>SH1</TravelerReferences></AssociatedTraveler></Associations></RequestedDate></OfferPrice><Associations><ApplicableFlight><FlightSegmentReference ref=\"BA0953\"><ClassOfService refs=\"FBCODE3\"><Code SeatsLeft=\"1\">V</Code><MarketingName>Euro Traveller</MarketingName></ClassOfService></FlightSegmentReference><OriginDestinationReferences>OD1</OriginDestinationReferences><FlightReferences>Flight2</FlightReferences></ApplicableFlight><PriceClass><PriceClassReference>BASIC</PriceClassReference></PriceClass></Associations></PricedOffer></AirlineOffer><AirlineOffer RequestedDateInd=\"true\"><OfferID Owner=\"BA\">OFFER4</OfferID><TotalPrice><SimpleCurrencyPrice Code=\"EUR\">176.14</SimpleCurrencyPrice></TotalPrice><PricedOffer><OfferPrice OfferItemID=\"1\"><RequestedDate><PriceDetail><TotalAmount><SimpleCurrencyPrice Code=\"EUR\">176.14</SimpleCurrencyPrice></TotalAmount><BaseAmount Code=\"EUR\">139.00</BaseAmount><Taxes><Total Code=\"EUR\">37.14</Total></Taxes></PriceDetail><Associations><AssociatedTraveler><TravelerReferences>SH1</TravelerReferences></AssociatedTraveler></Associations></RequestedDate></OfferPrice><Associations><ApplicableFlight><FlightSegmentReference ref=\"BA0953\"><ClassOfService refs=\"FBCODE4\"><Code SeatsLeft=\"1\">V</Code><MarketingName>Euro Traveller</MarketingName></ClassOfService></FlightSegmentReference><OriginDestination",
      headers: %HTTPotion.Headers{
        hdrs: %{
          "ba-true-client-ip" => "189.6.240.126",
          "ba_captwo_txid" => "tx-08-01-1-60dc8d47-df1f-4daa-9fb8-0860bb9ac465",
          "connection" => "keep-alive",
          "content-length" => "54425",
          "content-type" => "text/xml;charset=utf-8",
          "date" => "Wed, 14 Aug 2019 21:16:06 GMT",
          "operation" => "AirShoppingV01",
          "server" => "Apache",
          "vary" => "Accept-Encoding",
          "x-frame-options" => "SAMEORIGIN",
          "x-mashery-responder" => "prod-j-worker-sni-eu-west-1b-08.mashery.com",
          "x-plan-qps-allotted" => "2",
          "x-plan-qps-current" => "1",
          "x-plan-quota-allotted" => "5000",
          "x-plan-quota-current" => "14",
          "x-plan-quota-reset" => "Thursday, August 15, 2019 12:00:00 AM GMT"
        }
      },
      status_code: 200
    }
  end

  def af_flight do
    %HTTPotion.Response{
      body:
        "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<S:Envelope xmlns:S=\"http://schemas.xmlsoap.org/soap/envelope/\"><S:Header><trackingMessageHeader xmlns=\"http://www.af-klm.com/soa/xsd/MessageHeader-V1_0\"><consumerRef><userID/><partyID>unidentified</partyID><consumerID>unidentified</consumerID><consumerLocation>unidentified</consumerLocation><consumerType>unidentified</consumerType><consumerTime>2019-08-14T21:27:34Z</consumerTime></consumerRef></trackingMessageHeader><MessageID xmlns=\"http://www.w3.org/2005/08/addressing\">uuid:02ebbef1-f737-4396-a0bb-c53fcfdc5e22</MessageID><RelatesTo RelationshipType=\"http://www.af-klm.com/soa/tracking/ReplyTo\" xmlns=\"http://www.w3.org/2005/08/addressing\">uuid:esbd80a4f81-91ae-4ddf-8b3d-efa07dd763e7</RelatesTo><RelatesTo RelationshipType=\"http://www.af-klm.com/soa/tracking/InitiatedBy\" xmlns=\"http://www.w3.org/2005/08/addressing\">uuid:esbd80a4f81-91ae-4ddf-8b3d-efa07dd763e7</RelatesTo></S:Header><S:Body><AirShoppingRS Version=\"17.1\" CorrelationID=\"0443aa1831914cd1a78b73b1705883e2\" Target=\"Production\" xmlns:ns2=\"http://www.af-klm.com/services/common/SystemFault-v1/xsd\" xmlns=\"http://www.iata.org/IATA/EDIST/2017.1\"><Document><Name>name</Name><ReferenceVersion>ref</ReferenceVersion></Document><Success/><ShoppingResponseID><Owner>AF</Owner><ResponseID>123456798</ResponseID></ShoppingResponseID><OffersGroup><AirlineOffers><Offer OfferID=\"d5174bfa-74e8-4165-974b-fa74e8210001\" Owner=\"AF\"><Parameters><TotalItemQuantity>1</TotalItemQuantity></Parameters><ValidatingCarrier>AF</ValidatingCarrier><TimeLimits><OfferExpiration DateTime=\"2019-08-14T21:57:36.244\"/></TimeLimits><TotalPrice><DetailCurrencyPrice><Total Code=\"EUR\" Taxable=\"true\">509.11</Total><Taxes><Total Code=\"EUR\" Taxable=\"true\">53.11</Total></Taxes></DetailCurrencyPrice></TotalPrice><FlightsOverview><FlightRef ODRef=\"OD1\" PriceClassRef=\"PC1\">FL1</FlightRef></FlightsOverview><OfferItem OfferItemID=\"a5683ad9-e105-4b11-a83a-d9e1052b1152\"><TotalPriceDetail><TotalAmount><DetailCurrencyPrice><Total Code=\"EUR\" Taxable=\"true\">509.11</Total></DetailCurrencyPrice></TotalAmount><BaseAmount Code=\"EUR\" Taxable=\"true\">456.00</BaseAmount><Taxes><Total Code=\"EUR\" Taxable=\"true\">53.11</Total></Taxes></TotalPriceDetail><Service ServiceID=\"SV0\"><PassengerRefs>PAX1</PassengerRefs><FlightRefs>FL1</FlightRefs></Service><FareDetail><PassengerRefs>PAX1</PassengerRefs><Price><BaseAmount Code=\"EUR\" Taxable=\"true\">456.00</BaseAmount><Taxes><Total Code=\"EUR\" Taxable=\"true\">53.11</Total></Taxes></Price><FareComponent><PriceClassRef>PC1</PriceClassRef><SegmentRefs>SEG1 SEG2</SegmentRefs></FareComponent></FareDetail></OfferItem></Offer><Offer OfferID=\"d5174bfa-74e8-4165-974b-fa74e8210002\" Owner=\"AF\"><Parameters><TotalItemQuantity>1</TotalItemQuantity></Parameters><ValidatingCarrier>AF</ValidatingCarrier><TimeLimits><OfferExpiration DateTime=\"2019-08-14T21:57:36.244\"/></TimeLimits><TotalPrice><DetailCurrencyPrice><Total Code=\"EUR\" Taxable=\"true\">509.11</Total><Taxes><Total Code=\"EUR\" Taxable=\"true\">53.11</Total></Taxes></DetailCurrencyPrice></TotalPrice><FlightsOverview><FlightRef ODRef=\"OD1\" PriceClassRef=\"PC1\">FL2</FlightRef></FlightsOverview><OfferItem OfferItemID=\"c534749f-dec1-4b02-b474-9fdec18b029e\"><TotalPriceDetail><TotalAmount><DetailCurrencyPrice><Total Code=\"EUR\" Taxable=\"true\">509.11</Total></DetailCurrencyPrice></TotalAmount><BaseAmount Code=\"EUR\" Taxable=\"true\">456.00</BaseAmount><Taxes><Total Code=\"EUR\" Taxable=\"true\">53.11</Total></Taxes></TotalPriceDetail><Service ServiceID=\"SV1\"><PassengerRefs>PAX1</PassengerRefs><FlightRefs>FL2</FlightRefs></Service><FareDetail><PassengerRefs>PAX1</PassengerRefs><Price><BaseAmount Code=\"EUR\" Taxable=\"true\">456.00</BaseAmount><Taxes><Total Code=\"EUR\" Taxable=\"true\">53.11</Total></Taxes></Price><FareComponent><PriceClassRef>PC1</PriceClassRef><SegmentRefs>SEG3 SEG4</SegmentRefs></FareComponent></FareDetail></OfferItem></Offer><Offer OfferID=\"d5174bfa-74e8-4165-974b-fa74e8210003\" Owner=\"AF\"><Parameters><TotalItemQuantity>1</TotalItemQuantity></Parameters><ValidatingCarrier>AF</ValidatingCarrier><TimeLimits><OfferExpiration DateTi",
      headers: %HTTPotion.Headers{
        hdrs: %{
          "connection" => "keep-alive",
          "content-type" => "text/xml",
          "date" => "Wed, 14 Aug 2019 21:27:36 GMT",
          "server" => "Apache-Coyote/1.1",
          "transfer-encoding" => "chunked",
          "x-backside-transport" => "OK OK",
          "x-global-transaction-id" => "76e000f15d547cc6a5b3c3dd",
          "x-mashery-message-id" => "cc184c0a-dde8-4511-8d8b-734051d832b8",
          "x-mashery-responder" => "prod-j-worker-eu-west-1c-26.mashery.com"
        }
      },
      status_code: 200
    }
  end
end
