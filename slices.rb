'{
 "kind": "qpxExpress#tripsSearch",
 "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "TNDMkNrXKMZi4H8ZN0PXFo",
  "data": {
   "kind": "qpxexpress#data"
  }
 }
}'

{
  "request": {
    "slice": [
      {
        "origin": "PAR",
        "destination": "LIS",
        "date": "2016-12-06",
        "maxStops": 0
      },
      {
        "origin": "LIS",
        "destination": "PAR",
        "date": "2016-12-09",
        "maxStops": 0
      }
    ],
    "passengers": {
      "adultCount": 1,
      "infantInLapCount": 0,
      "infantInSeatCount": 0,
      "childCount": 0,
      "seniorCount": 0
    },
    "solutions": 10,
    "refundable": false
  }
}

#####################################

'{"kind":"qpxExpress#tripsSearch","trips":{"kind":"qpxexpress#tripOptions","requestId":"92KPs0phCVgNnMcyo0PXCR","data":{"kind":"qpxexpress#data","airport":[{"kind":"qpxexpress#airportData","code":"LIS","city":"LIS","name":"Lisbon"},{"kind":"qpxexpress#airportData","code":"ORY","city":"PAR","name":"Paris Orly"}],"city":[{"kind":"qpxexpress#cityData","code":"LIS","name":"Lisbon"},{"kind":"qpxexpress#cityData","code":"PAR","name":"Paris"}],"aircraft":[{"kind":"qpxexpress#aircraftData","code":"320","name":"Airbus A320"}],"tax":[{"kind":"qpxexpress#taxData","id":"IZ_001","name":"French Air Passenger Solidarity Tax"},{"kind":"qpxexpress#taxData","id":"FR_007","name":"French Airport Tax"},{"kind":"qpxexpress#taxData","id":"YQ_F","name":"ZI YQ surcharge"},{"kind":"qpxexpress#taxData","id":"QX","name":"French International Passenger Service Charge"},{"kind":"qpxexpress#taxData","id":"YP_003","name":"Portugal Passenger Service Charge"},{"kind":"qpxexpress#taxData","id":"PT_001","name":"Portugal Security Tax"},{"kind":"qpxexpress#taxData","id":"FR_001","name":"France Civil Aviation Tax Domestic And International"}],"carrier":[{"kind":"qpxexpress#carrierData","code":"ZI","name":"Aigle Azur"}]},"tripOption":[{"kind":"qpxexpress#tripOption","saleTotal":"EUR101.77","id":"AfJ4jUAKEoFSesxmzsRCAG001","slice":[{"kind":"qpxexpress#sliceInfo","duration":145,"segment":[{"kind":"qpxexpress#segmentInfo","duration":145,"flight":{"carrier":"ZI","number":"307"},"id":"G7aRjisYeDfrwq0R","cabin":"COACH","bookingCode":"Q","bookingCodeCount":9,"marriedSegmentGroup":"0","leg":[{"kind":"qpxexpress#legInfo","id":"LRnU-rGM7uHaz41R","aircraft":"320","arrivalTime":"2016-12-06T18:35+00:00","departureTime":"2016-12-06T17:10+01:00","origin":"ORY","destination":"LIS","originTerminal":"S","destinationTerminal":"1","duration":145,"mileage":893,"meal":"Food and Beverages for Purchase"}]}]},{"kind":"qpxexpress#sliceInfo","duration":140,"segment":[{"kind":"qpxexpress#segmentInfo","duration":140,"flight":{"carrier":"ZI","number":"302"},"id":"Geogbe-LMkIzpN3X","cabin":"COACH","bookingCode":"Q","bookingCodeCount":9,"marriedSegmentGroup":"1","leg":[{"kind":"qpxexpress#legInfo","id":"LqJxUiHeoUPIIbm8","aircraft":"320","arrivalTime":"2016-12-09T16:35+01:00","departureTime":"2016-12-09T13:15+00:00","origin":"LIS","destination":"ORY","originTerminal":"1","destinationTerminal":"S","duration":140,"mileage":893,"meal":"Food and Beverages for Purchase"}]}]}],"pricing":[{"kind":"qpxexpress#pricingInfo","fare":[{"kind":"qpxexpress#fareInfo","id":"AmPbPTyMPnyACLAfSOUayg0PH18R8obMDJ1a1Ff58yuw","carrier":"ZI","origin":"PAR","destination":"LIS","basisCode":"QRTFR0P"},{"kind":"qpxexpress#fareInfo","id":"AmPbPTyMPnyACLAfSOUayg0PH18R8obMDJ1a1Ff58yuw","carrier":"ZI","origin":"LIS","destination":"PAR","basisCode":"QRTFR0P"}],"segmentPricing":[{"kind":"qpxexpress#segmentPricing","fareId":"AmPbPTyMPnyACLAfSOUayg0PH18R8obMDJ1a1Ff58yuw","segmentId":"G7aRjisYeDfrwq0R"},{"kind":"qpxexpress#segmentPricing","fareId":"AmPbPTyMPnyACLAfSOUayg0PH18R8obMDJ1a1Ff58yuw","segmentId":"Geogbe-LMkIzpN3X"}],"baseFareTotal":"EUR32.00","saleFareTotal":"EUR32.00","saleTaxTotal":"EUR69.77","saleTotal":"EUR101.77","passengers":{"kind":"qpxexpress#passengerCounts","adultCount":1},"tax":[{"kind":"qpxexpress#taxInfo","id":"FR_001","chargeType":"GOVERNMENT","code":"FR","country":"FR","salePrice":"EUR4.44"},{"kind":"qpxexpress#taxInfo","id":"QX","chargeType":"GOVERNMENT","code":"QX","country":"FR","salePrice":"EUR10.54"},{"kind":"qpxexpress#taxInfo","id":"FR_007","chargeType":"GOVERNMENT","code":"FR","country":"FR","salePrice":"EUR12.75"},{"kind":"qpxexpress#taxInfo","id":"IZ_001","chargeType":"GOVERNMENT","code":"IZ","country":"FR","salePrice":"EUR1.13"},{"kind":"qpxexpress#taxInfo","id":"YQ_F","chargeType":"CARRIER_SURCHARGE","code":"YQ","salePrice":"EUR26.00"},{"kind":"qpxexpress#taxInfo","id":"YP_003","chargeType":"GOVERNMENT","code":"YP","country":"PT","salePrice":"EUR10.88"},{"kind":"qpxexpress#taxInfo","id":"PT_001","chargeType":"GOVERNMENT","code":"PT","country":"PT","salePrice":"EUR4.03"}],"fareCalculation":"PAR ZI LIS 17.95QRTFR0P ZI PAR 17.95QRTFR0P NUC 35.90 END ROE 0.891079 FARE EUR 32.00 XT 17.19FR 1.13IZ 10.54QX 4.03PT 10.88YP 26.00YQ","latestTicketingTime":"2016-12-06T11:09-05:00","ptc":"ADT"}]}]}}'
