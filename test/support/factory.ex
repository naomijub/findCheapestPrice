defmodule Flight.Factory do
  @moduledoc """
  A Factory module to return expected values from http request
  """
  import HTTPotion

  def ba_flight do
    %HTTPotion.Response{
      body: 
"""
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
    <soap:Body>
        <AirShoppingRS xmlns="http://www.iata.org/IATA/EDIST" Version="16.1">
            <Document>
                <ReferenceVersion>2016.1</ReferenceVersion>
            </Document>
            <Success/>
            <ShoppingResponseID>
                <ResponseID>2019-05-19T13:22:00.051Z</ResponseID>
            </ShoppingResponseID>
            <OffersGroup>
                <AirlineOffers>
                    <TotalOfferQuantity>28</TotalOfferQuantity>
                    <Owner>BA</Owner>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER1</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">77.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >77.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">40.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0947">
                                        <ClassOfService refs="FBCODE1ADT">
                                            <Code SeatsLeft="5">O</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight1</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>BASIC</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER2</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">86.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >86.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">49.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0949">
                                        <ClassOfService refs="FBCODE2ADT">
                                            <Code SeatsLeft="9">N</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight2</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>BASIC</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER3</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">87.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >87.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">50.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA3292">
                                        <ClassOfService refs="FBCODE3ADT">
                                            <Code SeatsLeft="9">N</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight3</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>BASIC</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER4</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">97.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >97.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">60.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0947">
                                        <ClassOfService refs="FBCODE4ADT">
                                            <Code SeatsLeft="5">O</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight1</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER5</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">106.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >106.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">69.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0949">
                                        <ClassOfService refs="FBCODE5ADT">
                                            <Code SeatsLeft="9">N</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight2</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER6</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">107.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >107.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">70.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA3292">
                                        <ClassOfService refs="FBCODE6ADT">
                                            <Code SeatsLeft="9">N</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight3</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER7</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">163.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >163.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">126.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0953">
                                        <ClassOfService refs="FBCODE7ADT">
                                            <Code SeatsLeft="9">L</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight4</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>BASIC</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER8</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">183.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >183.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">146.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0953">
                                        <ClassOfService refs="FBCODE8ADT">
                                            <Code SeatsLeft="9">L</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight4</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER9</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">219.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >219.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">182.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0951">
                                        <ClassOfService refs="FBCODE9ADT">
                                            <Code SeatsLeft="9">M</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight5</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>BASIC</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER10</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">234.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >234.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">197.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0953">
                                        <ClassOfService refs="FBCODE10ADT">
                                            <Code SeatsLeft="6">I</Code>
                                            <MarketingName>Club Europe</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight4</FlightReferences>
                                </ApplicableFlight>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER11</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">240.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >240.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">203.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0951">
                                        <ClassOfService refs="FBCODE11ADT">
                                            <Code SeatsLeft="9">M</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight5</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER12</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">247.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >247.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">197.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2091">
                                        <ClassOfService refs="FBCODE12ADT">
                                            <Code SeatsLeft="9">S</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA0831">
                                        <ClassOfService refs="FBCODE13ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight6</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER13</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">256.7</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >256.70</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">217.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">39.70</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE14ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA0837">
                                        <ClassOfService refs="FBCODE15ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight7</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER14</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">259.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >259.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">209.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE14ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA0823">
                                        <ClassOfService refs="FBCODE16ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight8</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER15</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">262.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >262.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">225.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA3292">
                                        <ClassOfService refs="FBCODE17ADT">
                                            <Code SeatsLeft="9">I</Code>
                                            <MarketingName>Club Europe</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight3</FlightReferences>
                                </ApplicableFlight>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER16</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">283.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >283.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">233.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2091">
                                        <ClassOfService refs="FBCODE18ADT">
                                            <Code SeatsLeft="9">S</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5952">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight9</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER17</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">283.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >283.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">233.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2091">
                                        <ClassOfService refs="FBCODE18ADT">
                                            <Code SeatsLeft="9">S</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5954">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight10</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER18</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">288.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >288.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">251.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0949">
                                        <ClassOfService refs="FBCODE20ADT">
                                            <Code SeatsLeft="9">R</Code>
                                            <MarketingName>Club Europe</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight2</FlightReferences>
                                </ApplicableFlight>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER19</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">288.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >288.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">251.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0947">
                                        <ClassOfService refs="FBCODE20ADT">
                                            <Code SeatsLeft="9">R</Code>
                                            <MarketingName>Club Europe</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight1</FlightReferences>
                                </ApplicableFlight>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER20</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">288.7</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >288.70</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">249.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">39.70</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE21ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5968">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight11</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER21</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">288.7</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >288.70</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">249.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">39.70</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE21ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5974">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight12</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER22</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">288.7</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >288.70</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">249.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">39.70</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE21ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5976">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight13</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER23</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">288.7</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >288.70</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">249.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">39.70</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE21ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5978">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight14</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER24</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">299.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >299.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">249.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE21ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5970">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight15</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER25</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">299.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >299.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">249.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE21ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5960">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight16</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER26</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">379.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >379.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">342.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0951">
                                        <ClassOfService refs="FBCODE22ADT">
                                            <Code SeatsLeft="9">R</Code>
                                            <MarketingName>Club Europe</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight5</FlightReferences>
                                </ApplicableFlight>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER27</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">627.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >627.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">577.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2091">
                                        <ClassOfService refs="FBCODE12ADT">
                                            <Code SeatsLeft="9">S</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5900">
                                        <ClassOfService refs="FBCODE23ADT">
                                            <Code SeatsLeft="9">Y</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight17</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER28</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">665.97</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >665.97</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">592.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">73.97</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2091">
                                        <ClassOfService refs="FBCODE12ADT">
                                            <Code SeatsLeft="9">S</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA2072">
                                        <ClassOfService refs="FBCODE24ADT">
                                            <Code SeatsLeft="9">Y</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA1389">
                                        <ClassOfService refs="FBCODE25ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight18</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                </AirlineOffers>
            </OffersGroup>
            <DataLists>
                <AnonymousTravelerList>
                    <AnonymousTraveler ObjectKey="SH1">
                        <PTC>ADT</PTC>
                    </AnonymousTraveler>
                </AnonymousTravelerList>
                <DisclosureList>
                    <Disclosures ListKey="EuroTraveller">
                        <Description>
                            <Text>Drinks and M&amp;S food available to buy on flights to/from London
                                Heathrow and London Gatwick</Text>
                        </Description>
                        <Description>
                            <Text>Contoured leather seat</Text>
                        </Description>
                    </Disclosures>
                    <Disclosures ListKey="ClubEurope">
                        <Description>
                            <Text>Access to British Airways lounges where available</Text>
                        </Description>
                        <Description>
                            <Text>Dedicated check-in area</Text>
                        </Description>
                        <Description>
                            <Text>Complimentary bar service including champagne upon request </Text>
                        </Description>
                        <Description>
                            <Text>Contoured leather seat with guaranteed window or aisle</Text>
                        </Description>
                        <Description>
                            <Text>Guaranteed window or aisle seat</Text>
                        </Description>
                        <Description>
                            <Text>2 x 32kg checked baggage allowance</Text>
                        </Description>
                    </Disclosures>
                </DisclosureList>
                <FareList>
                    <FareGroup ListKey="FBCODE1ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OWZ0HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE2ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>NWZ0HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE3ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>NWZ0CO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE4ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE5ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>NWV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE6ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>NWV2CO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE7ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>LWZ0HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE8ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>LWV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE9ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>MPZ0HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE10ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>IV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE11ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>MPV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE12ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>SHEIH/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE13ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OTV2H/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE14ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>VHEIH/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE15ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OEV2H/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE16ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OPV2H/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE17ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>IV2CO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE18ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>SHEIHO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE19ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OEIRO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE20ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>RNV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE21ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>VHEIHO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE22ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>RV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE23ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>YEIW/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE24ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>YEIH/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE25ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OADDV2RO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                </FareList>
                <FlightSegmentList>
                    <FlightSegment SegmentKey="BA0947">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>07:15</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>08:30</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0947</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>321</AircraftCode>
                            <Name>Airbus A321 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT2H15M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA0949">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>10:35</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>11:45</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0949</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>32N</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT2H10M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA3292">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>06:40</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LCY</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>07:35</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>CITY AIRPORT</AirportName>
                            <Terminal>
                                <Name/>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>3292</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>CJ</AirlineID>
                            <Name>BA CityFlyer</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>E90</AircraftCode>
                            <Name>Embraer E190SR</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H55M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA0953">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>16:25</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>17:25</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0953</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>321</AircraftCode>
                            <Name>Airbus A321 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT2H</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA0951">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>12:45</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>13:50</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0951</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT2H5M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA2091">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>20:25</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>21:55</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>2091</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT2H30M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA0831">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>07:30</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>09:10</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0831</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>32A</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H40M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA2089">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>11:25</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>13:10</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>2089</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT2H45M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA0837">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>15:40</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>17:05</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0837</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>319</AircraftCode>
                            <Name>Airbus A319 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H25M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA0823">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>19:50</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>21:10</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0823</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>319</AircraftCode>
                            <Name>Airbus A319 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H20M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5952">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>06:30</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>08:05</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5952</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H35M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5954">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>07:30</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>09:05</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5954</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H35M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5968">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>14:30</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>16:00</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5968</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H30M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5974">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>15:50</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>17:20</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5974</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H30M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5976">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>17:00</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>18:20</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5976</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H20M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5978">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>18:00</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>19:20</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5978</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H20M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5970">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>19:00</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>20:20</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5970</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H20M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5960">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>20:10</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>21:30</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5960</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H20M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5900">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>07:00</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LGW</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>08:40</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>GATWICK</AirportName>
                            <Terminal>
                                <Name>S</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5900</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H40M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA2072">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>06:30</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>MAN</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>07:35</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>MANCHESTER</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>2072</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H5M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA1389">
                        <Departure>
                            <AirportCode>MAN</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>09:45</Time>
                            <AirportName>MANCHESTER</AirportName>
                            <Terminal>
                                <Name>3</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>10:55</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>1389</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>319</AircraftCode>
                            <Name>Airbus A319 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H10M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                </FlightSegmentList>
                <FlightList>
                    <Flight FlightKey="Flight1">
                        <Journey>
                            <Time>PT2H15M</Time>
                        </Journey>
                        <SegmentReferences>BA0947</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight2">
                        <Journey>
                            <Time>PT2H10M</Time>
                        </Journey>
                        <SegmentReferences>BA0949</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight3">
                        <Journey>
                            <Time>PT1H55M</Time>
                        </Journey>
                        <SegmentReferences>BA3292</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight4">
                        <Journey>
                            <Time>PT2H</Time>
                        </Journey>
                        <SegmentReferences>BA0953</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight5">
                        <Journey>
                            <Time>PT2H5M</Time>
                        </Journey>
                        <SegmentReferences>BA0951</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight6">
                        <Journey>
                            <Time>PT13H45M</Time>
                        </Journey>
                        <SegmentReferences>BA2091 BA0831</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight7">
                        <Journey>
                            <Time>PT6H40M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA0837</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight8">
                        <Journey>
                            <Time>PT10H45M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA0823</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight9">
                        <Journey>
                            <Time>PT12H40M</Time>
                        </Journey>
                        <SegmentReferences>BA2091 BA5952</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight10">
                        <Journey>
                            <Time>PT13H40M</Time>
                        </Journey>
                        <SegmentReferences>BA2091 BA5954</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight11">
                        <Journey>
                            <Time>PT5H35M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA5968</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight12">
                        <Journey>
                            <Time>PT6H55M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA5974</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight13">
                        <Journey>
                            <Time>PT7H55M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA5976</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight14">
                        <Journey>
                            <Time>PT8H55M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA5978</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight15">
                        <Journey>
                            <Time>PT9H55M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA5970</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight16">
                        <Journey>
                            <Time>PT11H5M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA5960</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight17">
                        <Journey>
                            <Time>PT13H15M</Time>
                        </Journey>
                        <SegmentReferences>BA2091 BA5900</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight18">
                        <Journey>
                            <Time>PT15H30M</Time>
                        </Journey>
                        <SegmentReferences>BA2091 BA2072 BA1389</SegmentReferences>
                    </Flight>
                </FlightList>
                <OriginDestinationList>
                    <OriginDestination OriginDestinationKey="OD1">
                        <DepartureCode>MUC</DepartureCode>
                        <ArrivalCode>LON</ArrivalCode>
                        <FlightReferences>Flight1 Flight2 Flight3 Flight4 Flight5 Flight6 Flight9
                            Flight10 Flight17 Flight18 Flight7 Flight8 Flight11 Flight12 Flight13
                            Flight14 Flight15 Flight16</FlightReferences>
                    </OriginDestination>
                </OriginDestinationList>
                <PriceClassList>
                    <PriceClass ObjectKey="BASIC">
                        <Name>BASIC</Name>
                        <Code>HBO</Code>
                        <Descriptions>
                            <Description>
                                <Text>Allocated seats or pay to choose anytime</Text>
                            </Description>
                            <Description>
                                <Text>Hand baggage only</Text>
                            </Description>
                            <Description>
                                <Text>Last to board</Text>
                            </Description>
                        </Descriptions>
                    </PriceClass>
                    <PriceClass ObjectKey="PLUS">
                        <Name>PLUS</Name>
                        <Descriptions>
                            <Description>
                                <Text>Free seat choice from 48 hours before departure</Text>
                            </Description>
                            <Description>
                                <Text>1 x 23kg checked baggage allowance</Text>
                            </Description>
                        </Descriptions>
                    </PriceClass>
                </PriceClassList>
            </DataLists>
            <Metadata>
                <Other>
                    <OtherMetadata>
                        <CurrencyMetadatas>
                            <CurrencyMetadata MetadataKey="EUR">
                                <Decimals>2</Decimals>
                            </CurrencyMetadata>
                        </CurrencyMetadatas>
                    </OtherMetadata>
                </Other>
            </Metadata>
        </AirShoppingRS>
    </soap:Body>
</soap:Envelope>
""",
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
"""
<?xml version="1.0" encoding="UTF-8"?>
<S:Envelope xmlns:S="http://schemas.xmlsoap.org/soap/envelope/">
    <S:Header>
        <trackingMessageHeader xmlns="http://www.af-klm.com/soa/xsd/MessageHeader-V1_0">
            <consumerRef>
                <userID/>
                <partyID>unidentified</partyID>
                <consumerID>unidentified</consumerID>
                <consumerLocation>unidentified</consumerLocation>
                <consumerType>unidentified</consumerType>
                <consumerTime>2019-05-19T13:17:29Z</consumerTime>
            </consumerRef>
        </trackingMessageHeader>
        <MessageID xmlns="http://www.w3.org/2005/08/addressing"
            >uuid:d57c263b-30d7-49bd-a987-05bd6ed06812</MessageID>
        <RelatesTo RelationshipType="http://www.af-klm.com/soa/tracking/ReplyTo"
            xmlns="http://www.w3.org/2005/08/addressing"
            >uuid:esb174758b9-de95-46fa-bd36-047eab13dcca</RelatesTo>
        <RelatesTo RelationshipType="http://www.af-klm.com/soa/tracking/InitiatedBy"
            xmlns="http://www.w3.org/2005/08/addressing"
            >uuid:esb174758b9-de95-46fa-bd36-047eab13dcca</RelatesTo>
    </S:Header>
    <S:Body>
        <AirShoppingRS Version="17.1" CorrelationID="51c2bcd432b448bf9f792624b38cea28"
            Target="Production" xmlns:ns2="http://www.af-klm.com/services/common/SystemFault-v1/xsd"
            xmlns="http://www.iata.org/IATA/EDIST/2017.1">
            <Document>
                <Name>name</Name>
                <ReferenceVersion>ref</ReferenceVersion>
            </Document>
            <Success/>
            <ShoppingResponseID>
                <Owner>AF</Owner>
                <ResponseID>123456798</ResponseID>
            </ShoppingResponseID>
            <OffersGroup>
                <AirlineOffers>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876001" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">509.11</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">53.11</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC2">FL1</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="dd7d8088-f57d-4455-bd80-88f57d345508">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">509.11</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">456.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">53.11</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV0">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL1</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">456.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">53.11</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC2</PriceClassRef>
                                    <SegmentRefs>SEG1 SEG2</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876002" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">509.11</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">53.11</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC2">FL2</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="c5867d88-fe78-44c8-867d-88fe7864c883">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">509.11</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">456.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">53.11</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV1">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL2</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">456.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">53.11</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC2</PriceClassRef>
                                    <SegmentRefs>SEG3 SEG4</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876003" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">509.11</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">53.11</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC2">FL3</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="e0f888b3-0ba8-410f-b888-b30ba8b10f91">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">509.11</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">456.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">53.11</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV2">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL3</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">456.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">53.11</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC2</PriceClassRef>
                                    <SegmentRefs>SEG5 SEG6</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876004" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">509.11</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">53.11</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC2">FL4</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="dc51c24b-0038-489f-91c2-4b0038f89fbe">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">509.11</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">456.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">53.11</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV3">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL4</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">456.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">53.11</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC2</PriceClassRef>
                                    <SegmentRefs>SEG7 SEG8</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876005" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">509.11</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">53.11</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC2">FL5</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="cec8b0ba-0e2e-4748-88b0-ba0e2e474822">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">509.11</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">456.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">53.11</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV4">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL5</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">456.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">53.11</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC2</PriceClassRef>
                                    <SegmentRefs>SEG3 SEG6</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876006" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL6</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="ef3e38c8-5572-4d8a-be38-c855720d8ac0">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV5">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL6</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG9 SEG10</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876007" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL7</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="cf2fd123-e0e0-4765-afd1-23e0e00765c8">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV6">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL7</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG11 SEG12</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876008" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL8</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="b3aebb6d-ad75-4aeb-aebb-6dad753aebee">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV7">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL8</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG13 SEG14</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876009" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL9</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="e6dd386e-4c3a-41f5-9d38-6e4c3a51f5d0">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV8">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL9</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG9 SEG15</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df787600a" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL10</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="a7d65521-8f8f-4ad0-9655-218f8f4ad04f">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV9">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL10</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG16 SEG17</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df787600b" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL11</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="a9b06474-8c98-4f3a-b064-748c988f3a18">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV10">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL11</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG9 SEG18</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df787600c" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL12</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="debb88b5-d10e-4a88-bb88-b5d10eda8834">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV11">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL12</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG19 SEG20</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df787600d" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL13</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="db4a7ab7-914d-41c9-8a7a-b7914da1c951">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV12">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL13</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG13 SEG21</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df787600e" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL14</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="d78ca0b1-caa3-4bd5-8ca0-b1caa3dbd559">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV13">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL14</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG9 SEG22</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df787600f" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL15</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="b80c55e9-8b3d-4330-8c55-e98b3d733007">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV14">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL15</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG13 SEG10</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876010" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL16</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="d480211f-b26b-40be-8021-1fb26bb0be5a">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV15">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL16</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG19 SEG14</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876011" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL17</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="fa3f02da-af07-4006-bf02-daaf078006e8">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV16">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL17</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG13 SEG15</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876012" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL18</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="e18bbf28-f0df-4629-8bbf-28f0dfa629e1">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV17">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL18</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG13 SEG18</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876013" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL19</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="c2f92ad4-7e31-498e-b92a-d47e31398eca">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV18">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL19</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG16 SEG20</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                    <Offer OfferID="f5e80a50-2df7-476f-a80a-502df7876014" Owner="AF">
                        <Parameters>
                            <TotalItemQuantity>1</TotalItemQuantity>
                        </Parameters>
                        <ValidatingCarrier>AF</ValidatingCarrier>
                        <TimeLimits>
                            <OfferExpiration DateTime="2019-05-19T13:47:31.414"/>
                        </TimeLimits>
                        <TotalPrice>
                            <DetailCurrencyPrice>
                                <Total Code="EUR" Taxable="true">590.04</Total>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </DetailCurrencyPrice>
                        </TotalPrice>
                        <FlightsOverview>
                            <FlightRef ODRef="OD1" PriceClassRef="PC1">FL20</FlightRef>
                        </FlightsOverview>
                        <OfferItem OfferItemID="aa7575e4-6d7d-49db-b575-e46d7d29dbad">
                            <TotalPriceDetail>
                                <TotalAmount>
                                    <DetailCurrencyPrice>
                                        <Total Code="EUR" Taxable="true">590.04</Total>
                                    </DetailCurrencyPrice>
                                </TotalAmount>
                                <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                <Taxes>
                                    <Total Code="EUR" Taxable="true">50.04</Total>
                                </Taxes>
                            </TotalPriceDetail>
                            <Service ServiceID="SV19">
                                <PassengerRefs>PAX1</PassengerRefs>
                                <FlightRefs>FL20</FlightRefs>
                            </Service>
                            <FareDetail>
                                <PassengerRefs>PAX1</PassengerRefs>
                                <Price>
                                    <BaseAmount Code="EUR" Taxable="true">540.00</BaseAmount>
                                    <Taxes>
                                        <Total Code="EUR" Taxable="true">50.04</Total>
                                    </Taxes>
                                </Price>
                                <FareComponent>
                                    <PriceClassRef>PC1</PriceClassRef>
                                    <SegmentRefs>SEG19 SEG21</SegmentRefs>
                                </FareComponent>
                            </FareDetail>
                        </OfferItem>
                    </Offer>
                </AirlineOffers>
            </OffersGroup>
            <DataLists>
                <PassengerList>
                    <Passenger PassengerID="PAX1">
                        <PTC>ADT</PTC>
                    </Passenger>
                </PassengerList>
                <CheckedBagAllowanceList>
                    <CheckedBagAllowance ListKey="CB1">
                        <PieceAllowance>
                            <ApplicableParty>Traveler</ApplicableParty>
                            <TotalQuantity>2</TotalQuantity>
                            <PieceMeasurements Quantity="2"/>
                        </PieceAllowance>
                    </CheckedBagAllowance>
                </CheckedBagAllowanceList>
                <FlightSegmentList>
                    <FlightSegment SegmentKey="SEG1">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>18:10</Time>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>CDG</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>19:50</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>2F</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>AF</AirlineID>
                            <FlightNumber>1823</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>AF</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>319</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG2">
                        <Departure>
                            <AirportCode>CDG</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>20:55</Time>
                            <Terminal>
                                <Name>2E</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>21:20</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>AF</AirlineID>
                            <FlightNumber>1380</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>AF</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>321</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG3">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>07:15</Time>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>CDG</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>09:00</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>2F</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>AF</AirlineID>
                            <FlightNumber>1123</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>AF</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>319</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG4">
                        <Departure>
                            <AirportCode>CDG</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>10:10</Time>
                            <Terminal>
                                <Name>2E</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>10:35</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>AF</AirlineID>
                            <FlightNumber>1580</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>AF</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG5">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>09:30</Time>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>CDG</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>11:15</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>2F</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>AF</AirlineID>
                            <FlightNumber>1423</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>AF</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>32A</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG6">
                        <Departure>
                            <AirportCode>CDG</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>13:20</Time>
                            <Terminal>
                                <Name>2E</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>13:45</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>AF</AirlineID>
                            <FlightNumber>1780</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>AF</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>32A</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG7">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>12:25</Time>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>CDG</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>14:05</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>2F</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>AF</AirlineID>
                            <FlightNumber>1723</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>AF</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>318</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG8">
                        <Departure>
                            <AirportCode>CDG</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>18:15</Time>
                            <Terminal>
                                <Name>2E</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>18:35</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>AF</AirlineID>
                            <FlightNumber>1080</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>A5</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>E90</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG9">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>14:05</Time>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>15:40</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1796</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>E90</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG10">
                        <Departure>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>16:55</Time>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>17:10</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1029</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>E90</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG11">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>17:50</Time>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>19:25</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1798</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>73H</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG12">
                        <Departure>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>20:30</Time>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>20:55</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1033</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>73H</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG13">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>11:40</Time>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>13:15</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1794</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>73H</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG14">
                        <Departure>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>14:40</Time>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>15:00</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1019</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>73W</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG15">
                        <Departure>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>17:15</Time>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>17:35</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1023</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>E90</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG16">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>07:00</Time>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>08:35</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1790</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>73H</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG17">
                        <Departure>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>10:15</Time>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>10:45</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1009</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>73J</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG18">
                        <Departure>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>17:35</Time>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>17:50</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1031</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>E90</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG19">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>09:25</Time>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>11:00</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1792</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>73W</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG20">
                        <Departure>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>13:20</Time>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>13:50</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1017</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>73W</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG21">
                        <Departure>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>15:55</Time>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>16:15</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1021</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>73W</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                    <FlightSegment SegmentKey="SEG22">
                        <Departure>
                            <AirportCode>AMS</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>19:05</Time>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-08-15</Date>
                            <Time>19:25</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <Terminal>
                                <Name>4</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>KL</AirlineID>
                            <FlightNumber>1027</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>KL</AirlineID>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>73W</AircraftCode>
                        </Equipment>
                    </FlightSegment>
                </FlightSegmentList>
                <FlightList>
                    <Flight FlightKey="FL1">
                        <Journey>
                            <Time>P0Y0M0DT4H10M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG1 SEG2</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL2">
                        <Journey>
                            <Time>P0Y0M0DT4H20M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG3 SEG4</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL3">
                        <Journey>
                            <Time>P0Y0M0DT5H15M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG5 SEG6</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL4">
                        <Journey>
                            <Time>P0Y0M0DT7H10M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG7 SEG8</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL5">
                        <Journey>
                            <Time>P0Y0M0DT7H30M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG3 SEG6</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL6">
                        <Journey>
                            <Time>P0Y0M0DT4H5M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG9 SEG10</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL7">
                        <Journey>
                            <Time>P0Y0M0DT4H5M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG11 SEG12</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL8">
                        <Journey>
                            <Time>P0Y0M0DT4H20M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG13 SEG14</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL9">
                        <Journey>
                            <Time>P0Y0M0DT4H30M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG9 SEG15</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL10">
                        <Journey>
                            <Time>P0Y0M0DT4H45M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG16 SEG17</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL11">
                        <Journey>
                            <Time>P0Y0M0DT4H45M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG9 SEG18</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL12">
                        <Journey>
                            <Time>P0Y0M0DT5H25M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG19 SEG20</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL13">
                        <Journey>
                            <Time>P0Y0M0DT5H35M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG13 SEG21</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL14">
                        <Journey>
                            <Time>P0Y0M0DT6H20M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG9 SEG22</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL15">
                        <Journey>
                            <Time>P0Y0M0DT6H30M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG13 SEG10</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL16">
                        <Journey>
                            <Time>P0Y0M0DT6H35M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG19 SEG14</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL17">
                        <Journey>
                            <Time>P0Y0M0DT6H55M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG13 SEG15</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL18">
                        <Journey>
                            <Time>P0Y0M0DT7H10M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG13 SEG18</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL19">
                        <Journey>
                            <Time>P0Y0M0DT7H50M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG16 SEG20</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="FL20">
                        <Journey>
                            <Time>P0Y0M0DT7H50M0.000S</Time>
                        </Journey>
                        <SegmentReferences>SEG19 SEG21</SegmentReferences>
                    </Flight>
                </FlightList>
                <OriginDestinationList>
                    <OriginDestination OriginDestinationKey="OD1">
                        <DepartureCode>MUC</DepartureCode>
                        <ArrivalCode>LHR</ArrivalCode>
                        <FlightReferences>FL1 FL2 FL3 FL4 FL5 FL6 FL7 FL8 FL9 FL10 FL11 FL12 FL13
                            FL14 FL15 FL16 FL17 FL18 FL19 FL20</FlightReferences>
                    </OriginDestination>
                </OriginDestinationList>
                <PriceClassList>
                    <PriceClass PriceClassID="PC1">
                        <Name>Z7FFWDE_Z_C_BUSINESS</Name>
                        <FareBasisCode>
                            <Code>Z7FFWDE</Code>
                        </FareBasisCode>
                        <ClassOfService refs="CB1">
                            <Code>Z</Code>
                            <MarketingName CabinDesignator="C">BUSINESS</MarketingName>
                        </ClassOfService>
                    </PriceClass>
                    <PriceClass PriceClassID="PC2">
                        <Name>I3FFWDE_I_C_BUSINESS</Name>
                        <FareBasisCode>
                            <Code>I3FFWDE</Code>
                        </FareBasisCode>
                        <ClassOfService refs="CB1">
                            <Code>I</Code>
                            <MarketingName CabinDesignator="C">BUSINESS</MarketingName>
                        </ClassOfService>
                    </PriceClass>
                </PriceClassList>
            </DataLists>
        </AirShoppingRS>
    </S:Body>
</S:Envelope>
""",
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
