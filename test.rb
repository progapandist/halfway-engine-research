require 'json'

lis_txl = '{
 "kind": "qpxExpress#tripsSearch",
 "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "i9j03ScwMeyPAWE740PVzb",
  "data": {
   "kind": "qpxexpress#data",
   "airport": [
    {
     "kind": "qpxexpress#airportData",
     "code": "LIS",
     "city": "LIS",
     "name": "Lisbon"
    },
    {
     "kind": "qpxexpress#airportData",
     "code": "TXL",
     "city": "BER",
     "name": "Berlin Tegel"
    }
   ],
   "city": [
    {
     "kind": "qpxexpress#cityData",
     "code": "BER",
     "name": "Berlin"
    },
    {
     "kind": "qpxexpress#cityData",
     "code": "LIS",
     "name": "Lisbon"
    }
   ],
   "aircraft": [
    {
     "kind": "qpxexpress#aircraftData",
     "code": "320",
     "name": "Airbus A320"
    }
   ],
   "tax": [
    {
     "kind": "qpxexpress#taxData",
     "id": "YP_003",
     "name": "Portugal Passenger Service Charge"
    },
    {
     "kind": "qpxexpress#taxData",
     "id": "PT_001",
     "name": "Portugal Security Tax"
    },
    {
     "kind": "qpxexpress#taxData",
     "id": "YQ_I",
     "name": "TP YQ surcharge"
    }
   ],
   "carrier": [
    {
     "kind": "qpxexpress#carrierData",
     "code": "TP",
     "name": "TAP Portugal"
    }
   ]
  },
  "tripOption": [
   {
    "kind": "qpxexpress#tripOption",
    "saleTotal": "EUR136.91",
    "id": "H6PAR0kJ8J8NsNRrcMJhyF001",
    "slice": [
     {
      "kind": "qpxexpress#sliceInfo",
      "duration": 210,
      "segment": [
       {
        "kind": "qpxexpress#segmentInfo",
        "duration": 210,
        "flight": {
         "carrier": "TP",
         "number": "532"
        },
        "id": "G0hKW+FxRI292BIZ",
        "cabin": "COACH",
        "bookingCode": "K",
        "bookingCodeCount": 4,
        "marriedSegmentGroup": "0",
        "leg": [
         {
          "kind": "qpxexpress#legInfo",
          "id": "Li2jh1QioBqei3RC",
          "aircraft": "320",
          "arrivalTime": "2016-12-01T22:30+01:00",
          "departureTime": "2016-12-01T18:00+00:00",
          "origin": "LIS",
          "destination": "TXL",
          "originTerminal": "1",
          "duration": 210,
          "mileage": 1430,
          "meal": "Meal"
         }
        ]
       }
      ]
     }
    ],
    "pricing": [
     {
      "kind": "qpxexpress#pricingInfo",
      "fare": [
       {
        "kind": "qpxexpress#fareInfo",
        "id": "Ad9c3jrOaJa4hDnUmZxrEdwr/9/RhpLmaHA5poV2yWcs",
        "carrier": "TP",
        "origin": "LIS",
        "destination": "BER",
        "basisCode": "K15BSC0A"
       }
      ],
      "segmentPricing": [
       {
        "kind": "qpxexpress#segmentPricing",
        "fareId": "Ad9c3jrOaJa4hDnUmZxrEdwr/9/RhpLmaHA5poV2yWcs",
        "segmentId": "G0hKW+FxRI292BIZ"
       }
      ],
      "baseFareTotal": "EUR102.00",
      "saleFareTotal": "EUR102.00",
      "saleTaxTotal": "EUR34.91",
      "saleTotal": "EUR136.91",
      "passengers": {
       "kind": "qpxexpress#passengerCounts",
       "adultCount": 1
      },
      "tax": [
       {
        "kind": "qpxexpress#taxInfo",
        "id": "YQ_I",
        "chargeType": "CARRIER_SURCHARGE",
        "code": "YQ",
        "salePrice": "EUR20.00"
       },
       {
        "kind": "qpxexpress#taxInfo",
        "id": "YP_003",
        "chargeType": "GOVERNMENT",
        "code": "YP",
        "country": "PT",
        "salePrice": "EUR10.88"
       },
       {
        "kind": "qpxexpress#taxInfo",
        "id": "PT_001",
        "chargeType": "GOVERNMENT",
        "code": "PT",
        "country": "PT",
        "salePrice": "EUR4.03"
       }
      ],
      "fareCalculation": "LIS TP BER 114.46K15BSC0A NUC 114.46 END ROE 0.891079 FARE EUR 102.00 XT 4.03PT 10.88YP 20.00YQ",
      "latestTicketingTime": "2016-12-01T12:59-05:00",
      "ptc": "ADT"
     }
    ]
   }
  ]
 }
}
'

trip_price = JSON.parse(lis_txl)['trips']['tripOption'].first['saleTotal'].match(/\d+/)[0].to_i
p destination_city = JSON.parse(lis_txl)['trips']['data']['city'].first['name']
