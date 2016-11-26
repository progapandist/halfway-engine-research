require 'json'

module JSONResults

  # FROM ORIGIN1

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

  lis_lhr = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "bIImLl2DBWdrjrL1v0PVzf",
  "data": {
    "kind": "qpxexpress#data",
    "airport": [
      {
        "kind": "qpxexpress#airportData",
        "code": "LHR",
        "city": "LON",
        "name": "London Heathrow"
      },
      {
        "kind": "qpxexpress#airportData",
        "code": "LIS",
        "city": "LIS",
        "name": "Lisbon"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "LIS",
        "name": "Lisbon"
      },
      {
        "kind": "qpxexpress#cityData",
        "code": "LON",
        "name": "London"
      }
    ],
    "aircraft": [
      {
        "kind": "qpxexpress#aircraftData",
        "code": "319",
        "name": "Airbus A319"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "320",
        "name": "Airbus A320"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "321",
        "name": "Airbus A321"
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
        "code": "BA",
        "name": "British Airways"
      },
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
      "saleTotal": "EUR164.23",
      "id": "Cb3j2V8xnGITEfvJlSiW2U001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 170,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 170,
              "flight": {
                "carrier": "TP",
                "number": "366"
              },
              "id": "G+pFZgjUPvygE3Iv",
              "cabin": "COACH",
              "bookingCode": "V",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L0vRH9RurMsJmlVe",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T22:35+00:00",
                  "departureTime": "2016-12-01T19:45+00:00",
                  "origin": "LIS",
                  "destination": "LHR",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 170,
                  "mileage": 972,
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
              "id": "ARk9Y4n6Vk/wyRgr9BDmgY+ERUv08td5WLNMCSPLUHDA",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "LON",
              "basisCode": "VL2BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "ARk9Y4n6Vk/wyRgr9BDmgY+ERUv08td5WLNMCSPLUHDA",
              "segmentId": "G+pFZgjUPvygE3Iv"
            }
          ],
          "baseFareTotal": "EUR98.00",
          "saleFareTotal": "EUR98.00",
          "saleTaxTotal": "EUR66.23",
          "saleTotal": "EUR164.23",
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
              "salePrice": "EUR43.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR17.53"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR5.70"
            }
          ],
          "fareCalculation": "LIS TP LON 109.97VL2BSC0A NUC 109.97 END ROE 0.891079 FARE EUR 98.00 XT 5.70PT 17.53YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T14:44-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR164.23",
      "id": "Cb3j2V8xnGITEfvJlSiW2U002",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 170,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 170,
              "flight": {
                "carrier": "TP",
                "number": "374"
              },
              "id": "GWCaa2Elgvi4X0ti",
              "cabin": "COACH",
              "bookingCode": "V",
              "bookingCodeCount": 8,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LP5AIwETocnsqV1W",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T21:30+00:00",
                  "departureTime": "2016-12-01T18:40+00:00",
                  "origin": "LIS",
                  "destination": "LHR",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 170,
                  "mileage": 972,
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
              "id": "ARk9Y4n6Vk/wyRgr9BDmgY+ERUv08td5WLNMCSPLUHDA",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "LON",
              "basisCode": "VL2BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "ARk9Y4n6Vk/wyRgr9BDmgY+ERUv08td5WLNMCSPLUHDA",
              "segmentId": "GWCaa2Elgvi4X0ti"
            }
          ],
          "baseFareTotal": "EUR98.00",
          "saleFareTotal": "EUR98.00",
          "saleTaxTotal": "EUR66.23",
          "saleTotal": "EUR164.23",
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
              "salePrice": "EUR43.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR17.53"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR5.70"
            }
          ],
          "fareCalculation": "LIS TP LON 109.97VL2BSC0A NUC 109.97 END ROE 0.891079 FARE EUR 98.00 XT 5.70PT 17.53YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T13:39-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR189.23",
      "id": "Cb3j2V8xnGITEfvJlSiW2U003",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 170,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 170,
              "flight": {
                "carrier": "TP",
                "number": "356"
              },
              "id": "GLrnSKO47dEChcWh",
              "cabin": "COACH",
              "bookingCode": "Q",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LevIa3YAqp6wrdkX",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T17:30+00:00",
                  "departureTime": "2016-12-01T14:40+00:00",
                  "origin": "LIS",
                  "destination": "LHR",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 170,
                  "mileage": 972,
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
              "id": "Age+9ir3I4cHOYnXmx3mUnD+V2F4oR5kYOj93c51wrAE",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "LON",
              "basisCode": "Q02BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Age+9ir3I4cHOYnXmx3mUnD+V2F4oR5kYOj93c51wrAE",
              "segmentId": "GLrnSKO47dEChcWh"
            }
          ],
          "baseFareTotal": "EUR123.00",
          "saleFareTotal": "EUR123.00",
          "saleTaxTotal": "EUR66.23",
          "saleTotal": "EUR189.23",
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
              "salePrice": "EUR43.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR17.53"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR5.70"
            }
          ],
          "fareCalculation": "LIS TP LON 138.03Q02BSC0A NUC 138.03 END ROE 0.891079 FARE EUR 123.00 XT 5.70PT 17.53YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T09:39-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR218.23",
      "id": "Cb3j2V8xnGITEfvJlSiW2U005",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 170,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 170,
              "flight": {
                "carrier": "TP",
                "number": "368"
              },
              "id": "GQtG3B-cmK-Z61hA",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 7,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LeKYT26eY+99F7n8",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T15:30+00:00",
                  "departureTime": "2016-12-01T12:40+00:00",
                  "origin": "LIS",
                  "destination": "LHR",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 170,
                  "mileage": 972,
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
              "id": "AT3+8b+TnBuKxE9qN6rmQEgd7QLPT0pux93aPg86nZlY",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "LON",
              "basisCode": "H02BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AT3+8b+TnBuKxE9qN6rmQEgd7QLPT0pux93aPg86nZlY",
              "segmentId": "GQtG3B-cmK-Z61hA"
            }
          ],
          "baseFareTotal": "EUR152.00",
          "saleFareTotal": "EUR152.00",
          "saleTaxTotal": "EUR66.23",
          "saleTotal": "EUR218.23",
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
              "salePrice": "EUR43.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR17.53"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR5.70"
            }
          ],
          "fareCalculation": "LIS TP LON 170.57H02BSC0A NUC 170.57 END ROE 0.891079 FARE EUR 152.00 XT 5.70PT 17.53YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T07:39-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR218.23",
      "id": "Cb3j2V8xnGITEfvJlSiW2U004",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 170,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 170,
              "flight": {
                "carrier": "TP",
                "number": "364"
              },
              "id": "GeRANHB4g9y91qT+",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lm2bWWzA-CtRcVSE",
                  "aircraft": "321",
                  "arrivalTime": "2016-12-01T18:50+00:00",
                  "departureTime": "2016-12-01T16:00+00:00",
                  "origin": "LIS",
                  "destination": "LHR",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 170,
                  "mileage": 972,
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
              "id": "AT3+8b+TnBuKxE9qN6rmQEgd7QLPT0pux93aPg86nZlY",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "LON",
              "basisCode": "H02BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AT3+8b+TnBuKxE9qN6rmQEgd7QLPT0pux93aPg86nZlY",
              "segmentId": "GeRANHB4g9y91qT+"
            }
          ],
          "baseFareTotal": "EUR152.00",
          "saleFareTotal": "EUR152.00",
          "saleTaxTotal": "EUR66.23",
          "saleTotal": "EUR218.23",
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
              "salePrice": "EUR43.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR17.53"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR5.70"
            }
          ],
          "fareCalculation": "LIS TP LON 170.57H02BSC0A NUC 170.57 END ROE 0.891079 FARE EUR 152.00 XT 5.70PT 17.53YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T10:59-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR338.23",
      "id": "Cb3j2V8xnGITEfvJlSiW2U006",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 170,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 170,
              "flight": {
                "carrier": "TP",
                "number": "352"
              },
              "id": "GUFHB93AzPQ8qF19",
              "cabin": "COACH",
              "bookingCode": "B",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LJMtoJzZ7WIn1mlf",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T12:40+00:00",
                  "departureTime": "2016-12-01T09:50+00:00",
                  "origin": "LIS",
                  "destination": "LHR",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 170,
                  "mileage": 972,
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
              "id": "ASjSOdoiJK1IBqx60mElKkIrfrt37MUCN4Yxv8DtmT/2",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "LON",
              "basisCode": "B02BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "ASjSOdoiJK1IBqx60mElKkIrfrt37MUCN4Yxv8DtmT/2",
              "segmentId": "GUFHB93AzPQ8qF19"
            }
          ],
          "baseFareTotal": "EUR272.00",
          "saleFareTotal": "EUR272.00",
          "saleTaxTotal": "EUR66.23",
          "saleTotal": "EUR338.23",
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
              "salePrice": "EUR43.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR17.53"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR5.70"
            }
          ],
          "fareCalculation": "LIS TP LON 305.24B02BSC0A NUC 305.24 END ROE 0.891079 FARE EUR 272.00 XT 5.70PT 17.53YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T04:49-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR372.23",
      "id": "Cb3j2V8xnGITEfvJlSiW2U007",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 160,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 160,
              "flight": {
                "carrier": "BA",
                "number": "503"
              },
              "id": "GkkMgfgplmow6blH",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 2,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Ln3Wkq1YqSTYI7mj",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T21:45+00:00",
                  "departureTime": "2016-12-01T19:05+00:00",
                  "origin": "LIS",
                  "destination": "LHR",
                  "originTerminal": "1",
                  "destinationTerminal": "3",
                  "duration": 160,
                  "mileage": 972,
                  "meal": "Snack or Brunch"
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
              "id": "A5z+MJwimr0GbhRQ2hBO83iKpSeYL299C19hG2vzOaPs",
              "carrier": "BA",
              "origin": "LIS",
              "destination": "LON",
              "basisCode": "HV2HO"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A5z+MJwimr0GbhRQ2hBO83iKpSeYL299C19hG2vzOaPs",
              "segmentId": "GkkMgfgplmow6blH"
            }
          ],
          "baseFareTotal": "EUR349.00",
          "saleFareTotal": "EUR349.00",
          "saleTaxTotal": "EUR23.23",
          "saleTotal": "EUR372.23",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR5.70"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR17.53"
            }
          ],
          "fareCalculation": "LIS BA LON 391.65HV2HO NUC 391.65 END ROE 0.891079 FARE EUR 349.00 XT 5.70PT 17.53YP",
          "latestTicketingTime": "2016-11-29T23:59-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR392.23",
      "id": "Cb3j2V8xnGITEfvJlSiW2U008",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 165,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 165,
              "flight": {
                "carrier": "TP",
                "number": "354"
              },
              "id": "GyLmwA1Lwu4YY667",
              "cabin": "COACH",
              "bookingCode": "Y",
              "bookingCodeCount": 3,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LU5EmeJnuf-chJLg",
                  "aircraft": "321",
                  "arrivalTime": "2016-12-01T11:25+00:00",
                  "departureTime": "2016-12-01T08:40+00:00",
                  "origin": "LIS",
                  "destination": "LHR",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 165,
                  "mileage": 972,
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
              "id": "AbIuFWB3OUseu63VTAxe0ZxslYOO2LiPttGz03kZ39EE",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "LON",
              "basisCode": "Y02BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AbIuFWB3OUseu63VTAxe0ZxslYOO2LiPttGz03kZ39EE",
              "segmentId": "GyLmwA1Lwu4YY667"
            }
          ],
          "baseFareTotal": "EUR326.00",
          "saleFareTotal": "EUR326.00",
          "saleTaxTotal": "EUR66.23",
          "saleTotal": "EUR392.23",
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
              "salePrice": "EUR43.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR17.53"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR5.70"
            }
          ],
          "fareCalculation": "LIS TP LON 365.84Y02BSC0A NUC 365.84 END ROE 0.891079 FARE EUR 326.00 XT 5.70PT 17.53YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T03:39-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR438.23",
      "id": "Cb3j2V8xnGITEfvJlSiW2U009",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 170,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 170,
              "flight": {
                "carrier": "BA",
                "number": "501"
              },
              "id": "G+tKUGIYmFUAXLBa",
              "cabin": "COACH",
              "bookingCode": "B",
              "bookingCodeCount": 2,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LGxbH1nEZbF1m1+B",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T13:30+00:00",
                  "departureTime": "2016-12-01T10:40+00:00",
                  "origin": "LIS",
                  "destination": "LHR",
                  "originTerminal": "1",
                  "destinationTerminal": "3",
                  "duration": 170,
                  "mileage": 972,
                  "meal": "Snack or Brunch"
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
              "id": "AlsgTOPZvcLJd0CBx5jSKAAdxqbTOjaDkZUlhCGm5PL2",
              "carrier": "BA",
              "origin": "LIS",
              "destination": "LON",
              "basisCode": "BV3HO"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AlsgTOPZvcLJd0CBx5jSKAAdxqbTOjaDkZUlhCGm5PL2",
              "segmentId": "G+tKUGIYmFUAXLBa"
            }
          ],
          "baseFareTotal": "EUR415.00",
          "saleFareTotal": "EUR415.00",
          "saleTaxTotal": "EUR23.23",
          "saleTotal": "EUR438.23",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR5.70"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR17.53"
            }
          ],
          "fareCalculation": "LIS BA LON 465.72BV3HO NUC 465.72 END ROE 0.891079 FARE EUR 415.00 XT 5.70PT 17.53YP",
          "latestTicketingTime": "2016-12-01T05:39-05:00",
          "ptc": "ADT",
          "refundable": true
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR672.23",
      "id": "Cb3j2V8xnGITEfvJlSiW2U00A",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 175,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 175,
              "flight": {
                "carrier": "BA",
                "number": "499"
              },
              "id": "GOxIdh3Rlj63cun-",
              "cabin": "COACH",
              "bookingCode": "Y",
              "bookingCodeCount": 3,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LlYeAntwF0+Q6lg6",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T10:10+00:00",
                  "departureTime": "2016-12-01T07:15+00:00",
                  "origin": "LIS",
                  "destination": "LHR",
                  "originTerminal": "1",
                  "destinationTerminal": "3",
                  "duration": 175,
                  "mileage": 972,
                  "meal": "Snack or Brunch"
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
              "id": "AzcTZbVFD9RF8PWzvLryjyFazXTVZf9Br+V9u7iJeqFA",
              "carrier": "BA",
              "origin": "LIS",
              "destination": "LON",
              "basisCode": "YV3HO"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AzcTZbVFD9RF8PWzvLryjyFazXTVZf9Br+V9u7iJeqFA",
              "segmentId": "GOxIdh3Rlj63cun-"
            }
          ],
          "baseFareTotal": "EUR649.00",
          "saleFareTotal": "EUR649.00",
          "saleTaxTotal": "EUR23.23",
          "saleTotal": "EUR672.23",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR5.70"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR17.53"
            }
          ],
          "fareCalculation": "LIS BA LON 728.33YV3HO NUC 728.33 END ROE 0.891079 FARE EUR 649.00 XT 5.70PT 17.53YP",
          "latestTicketingTime": "2016-12-01T02:14-05:00",
          "ptc": "ADT",
          "refundable": true
        }
      ]
    }
  ]
  }
  }
  '

  lis_lgw = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "elyr2HaroxfBGgVyo0PVzg",
  "data": {
    "kind": "qpxexpress#data",
    "airport": [
      {
        "kind": "qpxexpress#airportData",
        "code": "LGW",
        "city": "LON",
        "name": "London Gatwick"
      },
      {
        "kind": "qpxexpress#airportData",
        "code": "LIS",
        "city": "LIS",
        "name": "Lisbon"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "LIS",
        "name": "Lisbon"
      },
      {
        "kind": "qpxexpress#cityData",
        "code": "LON",
        "name": "London"
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
      "saleTotal": "EUR419.23",
      "id": "cyvxrR1A065U9wDAO6wjiS001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 155,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 155,
              "flight": {
                "carrier": "TP",
                "number": "348"
              },
              "id": "G6s+ZoK2PtkWw0+p",
              "cabin": "BUSINESS",
              "bookingCode": "D",
              "bookingCodeCount": 1,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LSmTMs6MZ1C7g83W",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T09:50+00:00",
                  "departureTime": "2016-12-01T07:15+00:00",
                  "origin": "LIS",
                  "destination": "LGW",
                  "originTerminal": "1",
                  "destinationTerminal": "S",
                  "duration": 155,
                  "mileage": 958,
                  "meal": "Breakfast"
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
              "id": "A1hCaus4sljNeT2Nq9bPUIQC7EUCTXs9CksqC7/dZw16",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "LON",
              "basisCode": "D02EXE0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A1hCaus4sljNeT2Nq9bPUIQC7EUCTXs9CksqC7/dZw16",
              "segmentId": "G6s+ZoK2PtkWw0+p"
            }
          ],
          "baseFareTotal": "EUR346.00",
          "saleFareTotal": "EUR346.00",
          "saleTaxTotal": "EUR73.23",
          "saleTotal": "EUR419.23",
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
              "salePrice": "EUR50.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR17.53"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR5.70"
            }
          ],
          "fareCalculation": "LIS TP LON 388.29D02EXE0A NUC 388.29 END ROE 0.891079 FARE EUR 346.00 XT 5.70PT 17.53YP 50.00YQ",
          "latestTicketingTime": "2016-12-01T02:14-05:00",
          "ptc": "ADT"
        }
      ]
    }
  ]
  }
  }
  '

  lis_cdg = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "cXmqeatPhtKMgzlv50PVzh",
  "data": {
    "kind": "qpxexpress#data",
    "airport": [
      {
        "kind": "qpxexpress#airportData",
        "code": "CDG",
        "city": "PAR",
        "name": "Paris Charles de Gaulle"
      },
      {
        "kind": "qpxexpress#airportData",
        "code": "LIS",
        "city": "LIS",
        "name": "Lisbon"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "LIS",
        "name": "Lisbon"
      },
      {
        "kind": "qpxexpress#cityData",
        "code": "PAR",
        "name": "Paris"
      }
    ],
    "aircraft": [
      {
        "kind": "qpxexpress#aircraftData",
        "code": "321",
        "name": "Airbus A321"
      }
    ],
    "tax": [
      {
        "kind": "qpxexpress#taxData",
        "id": "PT_001",
        "name": "Portugal Security Tax"
      },
      {
        "kind": "qpxexpress#taxData",
        "id": "YP_003",
        "name": "Portugal Passenger Service Charge"
      }
    ],
    "carrier": [
      {
        "kind": "qpxexpress#carrierData",
        "code": "AF",
        "name": "Air France"
      }
    ]
  },
  "tripOption": [
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR300.91",
      "id": "JmFruszYgOOUrIfrnWKW1G001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 155,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 155,
              "flight": {
                "carrier": "AF",
                "number": "1625"
              },
              "id": "GtpuVqxW-HTtzmPq",
              "cabin": "COACH",
              "bookingCode": "U",
              "bookingCodeCount": 3,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LlJQtU9B8MzI00DR",
                  "aircraft": "321",
                  "arrivalTime": "2016-12-01T19:15+01:00",
                  "departureTime": "2016-12-01T15:40+00:00",
                  "origin": "LIS",
                  "destination": "CDG",
                  "originTerminal": "1",
                  "destinationTerminal": "2F",
                  "duration": 155,
                  "mileage": 913,
                  "meal": "Snack or Brunch"
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
              "id": "ALMe9NjmkxrL1yePt7Zh92KleOzUGCOzee1FFgzPxRVg",
              "carrier": "AF",
              "origin": "LIS",
              "destination": "PAR",
              "basisCode": "U3WKYPT9"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "ALMe9NjmkxrL1yePt7Zh92KleOzUGCOzee1FFgzPxRVg",
              "segmentId": "GtpuVqxW-HTtzmPq"
            }
          ],
          "baseFareTotal": "EUR286.00",
          "saleFareTotal": "EUR286.00",
          "saleTaxTotal": "EUR14.91",
          "saleTotal": "EUR300.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR4.03"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR10.88"
            }
          ],
          "fareCalculation": "LIS AF PAR 320.95U3WKYPT9 NUC 320.95 END ROE 0.891079 FARE EUR 286.00 XT 4.03PT 10.88YP",
          "latestTicketingTime": "2016-12-01T10:39-05:00",
          "ptc": "ADT"
        }
      ]
    }
  ]
  }
  }
  '

  lis_ory = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "eqDrrI2bTW1vxQkLu0PVzh",
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
        "code": "ORY",
        "city": "PAR",
        "name": "Paris Orly"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "LIS",
        "name": "Lisbon"
      },
      {
        "kind": "qpxexpress#cityData",
        "code": "PAR",
        "name": "Paris"
      }
    ],
    "aircraft": [
      {
        "kind": "qpxexpress#aircraftData",
        "code": "319",
        "name": "Airbus A319"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "320",
        "name": "Airbus A320"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "321",
        "name": "Airbus A321"
      }
    ],
    "tax": [
      {
        "kind": "qpxexpress#taxData",
        "id": "YQ_F",
        "name": "ZI YQ surcharge"
      },
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
        "name": "IB YQ surcharge"
      }
    ],
    "carrier": [
      {
        "kind": "qpxexpress#carrierData",
        "code": "BA",
        "name": "British Airways"
      },
      {
        "kind": "qpxexpress#carrierData",
        "code": "IB",
        "name": "Iberia Lineas Aereas de Espana S.A."
      },
      {
        "kind": "qpxexpress#carrierData",
        "code": "TP",
        "name": "TAP Portugal"
      },
      {
        "kind": "qpxexpress#carrierData",
        "code": "VY",
        "name": "Vueling Airlines S.A."
      },
      {
        "kind": "qpxexpress#carrierData",
        "code": "ZI",
        "name": "Aigle Azur"
      }
    ]
  },
  "tripOption": [
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR73.91",
      "id": "QkiXMqmpcUKN1dLgjgRHuK001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 140,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 140,
              "flight": {
                "carrier": "ZI",
                "number": "308"
              },
              "id": "GfTsuHfWbkNrSvOP",
              "cabin": "COACH",
              "bookingCode": "U",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Luf34thG1a6vZrW+",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T21:55+01:00",
                  "departureTime": "2016-12-01T18:35+00:00",
                  "origin": "LIS",
                  "destination": "ORY",
                  "originTerminal": "1",
                  "destinationTerminal": "S",
                  "duration": 140,
                  "mileage": 893,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "AELXGrdQDeGMgRDzlcDBdNkRnF/YdHSM483hp+nym3eI",
              "carrier": "ZI",
              "origin": "LIS",
              "destination": "PAR",
              "basisCode": "UOWPT0P"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AELXGrdQDeGMgRDzlcDBdNkRnF/YdHSM483hp+nym3eI",
              "segmentId": "GfTsuHfWbkNrSvOP"
            }
          ],
          "baseFareTotal": "EUR43.00",
          "saleFareTotal": "EUR43.00",
          "saleTaxTotal": "EUR30.91",
          "saleTotal": "EUR73.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YQ_F",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YQ",
              "salePrice": "EUR16.00"
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
          "fareCalculation": "LIS ZI PAR 48.25UOWPT0P NUC 48.25 END ROE 0.891079 FARE EUR 43.00 XT 4.03PT 10.88YP 16.00YQ",
          "latestTicketingTime": "2016-12-01T13:34-05:00",
          "ptc": "ADT",
          "refundable": true
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR105.91",
      "id": "QkiXMqmpcUKN1dLgjgRHuK004",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 155,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 155,
              "flight": {
                "carrier": "BA",
                "number": "2057"
              },
              "id": "G-ZGIUGEVzt8C2yP",
              "cabin": "COACH",
              "bookingCode": "N",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LlJYeoiqIr3vMeE5",
                  "aircraft": "321",
                  "arrivalTime": "2016-12-01T22:30+01:00",
                  "departureTime": "2016-12-01T18:55+00:00",
                  "origin": "LIS",
                  "destination": "ORY",
                  "originTerminal": "1",
                  "destinationTerminal": "W",
                  "duration": 155,
                  "operatingDisclosure": "OPERATED BY VUELING AIRLINES",
                  "mileage": 893,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "ABtQVscDi3+u0DzHcCzLn8u0w2B+42QazTJJSpMUXxGY",
              "carrier": "BA",
              "origin": "LIS",
              "destination": "PAR",
              "basisCode": "NOWVY"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "ABtQVscDi3+u0DzHcCzLn8u0w2B+42QazTJJSpMUXxGY",
              "segmentId": "G-ZGIUGEVzt8C2yP"
            }
          ],
          "baseFareTotal": "EUR91.00",
          "saleFareTotal": "EUR91.00",
          "saleTaxTotal": "EUR14.91",
          "saleTotal": "EUR105.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR4.03"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR10.88"
            }
          ],
          "fareCalculation": "LIS BA PAR 102.12NOWVY NUC 102.12 END ROE 0.891079 FARE EUR 91.00 XT 4.03PT 10.88YP",
          "latestTicketingTime": "2016-11-26T23:59-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR105.91",
      "id": "QkiXMqmpcUKN1dLgjgRHuK003",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 155,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 155,
              "flight": {
                "carrier": "VY",
                "number": "1982"
              },
              "id": "GmB1tLO6pUnM2jZc",
              "cabin": "COACH",
              "bookingCode": "X",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LKvrh9FXSE3jhq2A",
                  "aircraft": "321",
                  "arrivalTime": "2016-12-01T22:30+01:00",
                  "departureTime": "2016-12-01T18:55+00:00",
                  "origin": "LIS",
                  "destination": "ORY",
                  "originTerminal": "1",
                  "destinationTerminal": "W",
                  "duration": 155,
                  "mileage": 893,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "AF35UaVWAT9zLtPGgeK8aPJVyMcYhWNk0/x3N3eeSNPU",
              "carrier": "VY",
              "origin": "LIS",
              "destination": "PAR",
              "basisCode": "XOWVY"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AF35UaVWAT9zLtPGgeK8aPJVyMcYhWNk0/x3N3eeSNPU",
              "segmentId": "GmB1tLO6pUnM2jZc"
            }
          ],
          "baseFareTotal": "EUR66.00",
          "saleFareTotal": "EUR66.00",
          "saleTaxTotal": "EUR39.91",
          "saleTotal": "EUR105.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YQ_F",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YQ",
              "salePrice": "EUR25.00"
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
          "fareCalculation": "LIS VY PAR 74.06XOWVY NUC 74.06 END ROE 0.891079 FARE EUR 66.00 XT 4.03PT 10.88YP 25.00YQ",
          "latestTicketingTime": "2016-11-27T05:09-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR105.91",
      "id": "QkiXMqmpcUKN1dLgjgRHuK005",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 155,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 155,
              "flight": {
                "carrier": "IB",
                "number": "5986"
              },
              "id": "GwZMAueu0dzWJS4-",
              "cabin": "COACH",
              "bookingCode": "V",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LvkvRaJ6s982Onav",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T22:30+01:00",
                  "departureTime": "2016-12-01T18:55+00:00",
                  "origin": "LIS",
                  "destination": "ORY",
                  "originTerminal": "1",
                  "destinationTerminal": "W",
                  "duration": 155,
                  "operatingDisclosure": "OPERATED BY VUELING AIRLINES",
                  "mileage": 893
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
              "id": "AQ2JaodCkgHgX2IWhyaazXzkeAtogP30EKz0hcjiwfOQ",
              "carrier": "IB",
              "origin": "LIS",
              "destination": "PAR",
              "basisCode": "VOWNVY"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AQ2JaodCkgHgX2IWhyaazXzkeAtogP30EKz0hcjiwfOQ",
              "segmentId": "GwZMAueu0dzWJS4-"
            }
          ],
          "baseFareTotal": "EUR66.00",
          "saleFareTotal": "EUR66.00",
          "saleTaxTotal": "EUR39.91",
          "saleTotal": "EUR105.91",
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
              "salePrice": "EUR25.00"
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
          "fareCalculation": "LIS IB PAR 74.06VOWNVY NUC 74.06 END ROE 0.891079 FARE EUR 66.00 XT 4.03PT 10.88YP 25.00YQ",
          "latestTicketingTime": "2016-11-27T05:09-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR110.91",
      "id": "QkiXMqmpcUKN1dLgjgRHuK002",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 140,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 140,
              "flight": {
                "carrier": "ZI",
                "number": "310"
              },
              "id": "G3io0E0rcK3WmVFz",
              "cabin": "COACH",
              "bookingCode": "L",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L19i8GJSdLS7SonZ",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T09:20+01:00",
                  "departureTime": "2016-12-01T06:00+00:00",
                  "origin": "LIS",
                  "destination": "ORY",
                  "originTerminal": "1",
                  "destinationTerminal": "S",
                  "duration": 140,
                  "mileage": 893,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "A0w559SJCX5kWUvOLFhxk2eq/7fhSuQniDP8KGrTeWkc",
              "carrier": "ZI",
              "origin": "LIS",
              "destination": "PAR",
              "basisCode": "LOWPT0P"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A0w559SJCX5kWUvOLFhxk2eq/7fhSuQniDP8KGrTeWkc",
              "segmentId": "G3io0E0rcK3WmVFz"
            }
          ],
          "baseFareTotal": "EUR75.00",
          "saleFareTotal": "EUR75.00",
          "saleTaxTotal": "EUR35.91",
          "saleTotal": "EUR110.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YQ_F",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YQ",
              "salePrice": "EUR21.00"
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
          "fareCalculation": "LIS ZI PAR 84.16LOWPT0P NUC 84.16 END ROE 0.891079 FARE EUR 75.00 XT 4.03PT 10.88YP 21.00YQ",
          "latestTicketingTime": "2016-12-01T00:59-05:00",
          "ptc": "ADT",
          "refundable": true
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR176.91",
      "id": "QkiXMqmpcUKN1dLgjgRHuK006",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 150,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 150,
              "flight": {
                "carrier": "TP",
                "number": "448"
              },
              "id": "GnuteC4OtJiyOMFY",
              "cabin": "COACH",
              "bookingCode": "V",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LtJEK1nQg9THV1nu",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T21:35+01:00",
                  "departureTime": "2016-12-01T18:05+00:00",
                  "origin": "LIS",
                  "destination": "ORY",
                  "originTerminal": "1",
                  "destinationTerminal": "W",
                  "duration": 150,
                  "mileage": 893,
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
              "id": "AxX8B8C4kCByJyHUr3qrQoF5gUiydVdh6kFy8YF0XzJQ",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "PAR",
              "basisCode": "V14BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AxX8B8C4kCByJyHUr3qrQoF5gUiydVdh6kFy8YF0XzJQ",
              "segmentId": "GnuteC4OtJiyOMFY"
            }
          ],
          "baseFareTotal": "EUR119.00",
          "saleFareTotal": "EUR119.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR176.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP PAR 133.54V14BSC0A NUC 133.54 END ROE 0.891079 FARE EUR 119.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T13:04-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR176.91",
      "id": "QkiXMqmpcUKN1dLgjgRHuK007",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 150,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 150,
              "flight": {
                "carrier": "TP",
                "number": "446"
              },
              "id": "G6dWyZdRc7-rU2Vj",
              "cabin": "COACH",
              "bookingCode": "V",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LrczdwSEoOu9cZqW",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T23:05+01:00",
                  "departureTime": "2016-12-01T19:35+00:00",
                  "origin": "LIS",
                  "destination": "ORY",
                  "originTerminal": "1",
                  "destinationTerminal": "W",
                  "duration": 150,
                  "mileage": 893,
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
              "id": "AxX8B8C4kCByJyHUr3qrQoF5gUiydVdh6kFy8YF0XzJQ",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "PAR",
              "basisCode": "V14BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AxX8B8C4kCByJyHUr3qrQoF5gUiydVdh6kFy8YF0XzJQ",
              "segmentId": "G6dWyZdRc7-rU2Vj"
            }
          ],
          "baseFareTotal": "EUR119.00",
          "saleFareTotal": "EUR119.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR176.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP PAR 133.54V14BSC0A NUC 133.54 END ROE 0.891079 FARE EUR 119.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T14:34-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR261.91",
      "id": "QkiXMqmpcUKN1dLgjgRHuK008",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 150,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 150,
              "flight": {
                "carrier": "TP",
                "number": "438"
              },
              "id": "GLws5r4rvF4HH8SP",
              "cabin": "COACH",
              "bookingCode": "S",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L3hhwsm7LBUUnz4q",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T19:50+01:00",
                  "departureTime": "2016-12-01T16:20+00:00",
                  "origin": "LIS",
                  "destination": "ORY",
                  "originTerminal": "1",
                  "destinationTerminal": "W",
                  "duration": 150,
                  "mileage": 893,
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
              "id": "Awt7SfoNSM31R75BNto/aooeGUxIlbR8iQIg5iJfgkoE",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "PAR",
              "basisCode": "S14BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Awt7SfoNSM31R75BNto/aooeGUxIlbR8iQIg5iJfgkoE",
              "segmentId": "GLws5r4rvF4HH8SP"
            }
          ],
          "baseFareTotal": "EUR204.00",
          "saleFareTotal": "EUR204.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR261.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP PAR 228.93S14BSC0A NUC 228.93 END ROE 0.891079 FARE EUR 204.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T11:19-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR340.91",
      "id": "QkiXMqmpcUKN1dLgjgRHuK009",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 150,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 150,
              "flight": {
                "carrier": "TP",
                "number": "432"
              },
              "id": "GTmVdk0BABVDctjQ",
              "cabin": "COACH",
              "bookingCode": "B",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LCu2it5Cby8LNVvj",
                  "aircraft": "321",
                  "arrivalTime": "2016-12-01T16:55+01:00",
                  "departureTime": "2016-12-01T13:25+00:00",
                  "origin": "LIS",
                  "destination": "ORY",
                  "originTerminal": "1",
                  "destinationTerminal": "W",
                  "duration": 150,
                  "mileage": 893,
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
              "id": "Aq5I5+V//hInwWfFXcHGUfOvzTwBmkiJBaPuz/wefaQk",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "PAR",
              "basisCode": "B14BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Aq5I5+V//hInwWfFXcHGUfOvzTwBmkiJBaPuz/wefaQk",
              "segmentId": "GTmVdk0BABVDctjQ"
            }
          ],
          "baseFareTotal": "EUR283.00",
          "saleFareTotal": "EUR283.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR340.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP PAR 317.59B14BSC0A NUC 317.59 END ROE 0.891079 FARE EUR 283.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T08:24-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR340.91",
      "id": "QkiXMqmpcUKN1dLgjgRHuK00A",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 150,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 150,
              "flight": {
                "carrier": "TP",
                "number": "434"
              },
              "id": "GbUUz4rTVMan9rE6",
              "cabin": "COACH",
              "bookingCode": "B",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LHmFOGcT+BUdIQVV",
                  "aircraft": "321",
                  "arrivalTime": "2016-12-01T10:10+01:00",
                  "departureTime": "2016-12-01T06:40+00:00",
                  "origin": "LIS",
                  "destination": "ORY",
                  "originTerminal": "1",
                  "destinationTerminal": "W",
                  "duration": 150,
                  "mileage": 893,
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
              "id": "Aq5I5+V//hInwWfFXcHGUfOvzTwBmkiJBaPuz/wefaQk",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "PAR",
              "basisCode": "B14BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Aq5I5+V//hInwWfFXcHGUfOvzTwBmkiJBaPuz/wefaQk",
              "segmentId": "GbUUz4rTVMan9rE6"
            }
          ],
          "baseFareTotal": "EUR283.00",
          "saleFareTotal": "EUR283.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR340.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP PAR 317.59B14BSC0A NUC 317.59 END ROE 0.891079 FARE EUR 283.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T01:39-05:00",
          "ptc": "ADT"
        }
      ]
    }
  ]
  }
  }
  '

  lis_bcn = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "hMy5IFUkduNXes7jZ0PVzi",
  "data": {
    "kind": "qpxexpress#data",
    "airport": [
      {
        "kind": "qpxexpress#airportData",
        "code": "BCN",
        "city": "BCN",
        "name": "Barcelona"
      },
      {
        "kind": "qpxexpress#airportData",
        "code": "LIS",
        "city": "LIS",
        "name": "Lisbon"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "BCN",
        "name": "Barcelona"
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
        "code": "319",
        "name": "Airbus A319"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "320",
        "name": "Airbus A320"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "321",
        "name": "Airbus A321"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "E90",
        "name": "Embraer RJ-190"
      }
    ],
    "tax": [
      {
        "kind": "qpxexpress#taxData",
        "id": "YQ_F",
        "name": "VY YQ surcharge"
      },
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
        "code": "BA",
        "name": "British Airways"
      },
      {
        "kind": "qpxexpress#carrierData",
        "code": "IB",
        "name": "Iberia Lineas Aereas de Espana S.A."
      },
      {
        "kind": "qpxexpress#carrierData",
        "code": "TP",
        "name": "TAP Portugal"
      },
      {
        "kind": "qpxexpress#carrierData",
        "code": "VY",
        "name": "Vueling Airlines S.A."
      }
    ]
  },
  "tripOption": [
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR76.91",
      "id": "Y8gpwDu4AqNNCijve3Yoa4001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 110,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 110,
              "flight": {
                "carrier": "TP",
                "number": "1042"
              },
              "id": "G9IwVxC-0z9j9QOR",
              "cabin": "COACH",
              "bookingCode": "L",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LzfQkMTVi31Ia1z5",
                  "aircraft": "321",
                  "arrivalTime": "2016-12-01T23:35+01:00",
                  "departureTime": "2016-12-01T20:45+00:00",
                  "origin": "LIS",
                  "destination": "BCN",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 110,
                  "mileage": 617,
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
              "id": "AXfHJQyxzHtVD/ZrAYLtCmaLV5MYfVfsX0q6tuknSBMk",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "BCN",
              "basisCode": "L04BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AXfHJQyxzHtVD/ZrAYLtCmaLV5MYfVfsX0q6tuknSBMk",
              "segmentId": "G9IwVxC-0z9j9QOR"
            }
          ],
          "baseFareTotal": "EUR42.00",
          "saleFareTotal": "EUR42.00",
          "saleTaxTotal": "EUR34.91",
          "saleTotal": "EUR76.91",
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
          "fareCalculation": "LIS TP BCN 47.13L04BSC0A NUC 47.13 END ROE 0.891079 FARE EUR 42.00 XT 4.03PT 10.88YP 20.00YQ",
          "latestTicketingTime": "2016-12-01T15:44-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR85.91",
      "id": "Y8gpwDu4AqNNCijve3Yoa4003",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 110,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 110,
              "flight": {
                "carrier": "BA",
                "number": "8157"
              },
              "id": "GHI3fBxyOQO8dYle",
              "cabin": "COACH",
              "bookingCode": "Q",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L6hSP+Gm9HSWb-tY",
                  "aircraft": "321",
                  "arrivalTime": "2016-12-01T11:35+01:00",
                  "departureTime": "2016-12-01T08:45+00:00",
                  "origin": "LIS",
                  "destination": "BCN",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 110,
                  "operatingDisclosure": "OPERATED BY VUELING AIRLINES",
                  "mileage": 617,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "AdDlkrtNxuKk0u5MeXbiwXHRLnUS+ti7F6FIqATrLPGc",
              "carrier": "BA",
              "origin": "LIS",
              "destination": "BCN",
              "basisCode": "QOWVY"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AdDlkrtNxuKk0u5MeXbiwXHRLnUS+ti7F6FIqATrLPGc",
              "segmentId": "GHI3fBxyOQO8dYle"
            }
          ],
          "baseFareTotal": "EUR71.00",
          "saleFareTotal": "EUR71.00",
          "saleTaxTotal": "EUR14.91",
          "saleTotal": "EUR85.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR4.03"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR10.88"
            }
          ],
          "fareCalculation": "LIS BA BCN 79.67QOWVY NUC 79.67 END ROE 0.891079 FARE EUR 71.00 XT 4.03PT 10.88YP",
          "latestTicketingTime": "2016-11-26T23:59-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR85.91",
      "id": "Y8gpwDu4AqNNCijve3Yoa4004",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 110,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 110,
              "flight": {
                "carrier": "IB",
                "number": "5776"
              },
              "id": "GMuEN28JovSVz8mq",
              "cabin": "COACH",
              "bookingCode": "N",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L+EDlgB0uCBft7q1",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T11:35+01:00",
                  "departureTime": "2016-12-01T08:45+00:00",
                  "origin": "LIS",
                  "destination": "BCN",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 110,
                  "operatingDisclosure": "OPERATED BY VUELING AIRLINES",
                  "mileage": 617
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
              "id": "AC2iBExxKJrIPwCKuXUcYEqE5CrBLEdNRe+wthG8P30A",
              "carrier": "IB",
              "origin": "LIS",
              "destination": "BCN",
              "basisCode": "NOWNVY"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AC2iBExxKJrIPwCKuXUcYEqE5CrBLEdNRe+wthG8P30A",
              "segmentId": "GMuEN28JovSVz8mq"
            }
          ],
          "baseFareTotal": "EUR61.00",
          "saleFareTotal": "EUR61.00",
          "saleTaxTotal": "EUR24.91",
          "saleTotal": "EUR85.91",
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
              "salePrice": "EUR10.00"
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
          "fareCalculation": "LIS IB BCN 68.45NOWNVY NUC 68.45 END ROE 0.891079 FARE EUR 61.00 XT 4.03PT 10.88YP 10.00YQ",
          "latestTicketingTime": "2016-11-27T05:10-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR85.91",
      "id": "Y8gpwDu4AqNNCijve3Yoa4002",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 110,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 110,
              "flight": {
                "carrier": "VY",
                "number": "8461"
              },
              "id": "GGpF8SiBQqXbBEJP",
              "cabin": "COACH",
              "bookingCode": "T",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LV4FybpKZc-Mp0TA",
                  "aircraft": "321",
                  "arrivalTime": "2016-12-01T11:35+01:00",
                  "departureTime": "2016-12-01T08:45+00:00",
                  "origin": "LIS",
                  "destination": "BCN",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 110,
                  "mileage": 617,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "AwLy729pADIR682MsehOv6mqAco3fH6gBvIvbCphDOkM",
              "carrier": "VY",
              "origin": "LIS",
              "destination": "BCN",
              "basisCode": "TOWVY"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AwLy729pADIR682MsehOv6mqAco3fH6gBvIvbCphDOkM",
              "segmentId": "GGpF8SiBQqXbBEJP"
            }
          ],
          "baseFareTotal": "EUR61.00",
          "saleFareTotal": "EUR61.00",
          "saleTaxTotal": "EUR24.91",
          "saleTotal": "EUR85.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YQ_F",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YQ",
              "salePrice": "EUR10.00"
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
          "fareCalculation": "LIS VY BCN 68.45TOWVY NUC 68.45 END ROE 0.891079 FARE EUR 61.00 XT 4.03PT 10.88YP 10.00YQ",
          "latestTicketingTime": "2016-11-27T05:10-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR164.91",
      "id": "Y8gpwDu4AqNNCijve3Yoa4005",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 110,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 110,
              "flight": {
                "carrier": "TP",
                "number": "1046"
              },
              "id": "GR2zNFRYGoSbPpkc",
              "cabin": "COACH",
              "bookingCode": "S",
              "bookingCodeCount": 6,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LLtQTqShZswb9saL",
                  "aircraft": "E90",
                  "arrivalTime": "2016-12-01T20:20+01:00",
                  "departureTime": "2016-12-01T17:30+00:00",
                  "origin": "LIS",
                  "destination": "BCN",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 110,
                  "operatingDisclosure": "OPERATED BY PORTUGALIA - COMPANHIA PORTUGUESA",
                  "mileage": 617,
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
              "id": "AGR4sfUF7Wf6u1KEBeaEtPLa5bzhYH/Mh2Io5qOVSOaY",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "BCN",
              "basisCode": "S04BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AGR4sfUF7Wf6u1KEBeaEtPLa5bzhYH/Mh2Io5qOVSOaY",
              "segmentId": "GR2zNFRYGoSbPpkc"
            }
          ],
          "baseFareTotal": "EUR107.00",
          "saleFareTotal": "EUR107.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR164.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP BCN 120.07S04BSC0A NUC 120.07 END ROE 0.891079 FARE EUR 107.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T12:29-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR182.91",
      "id": "Y8gpwDu4AqNNCijve3Yoa4006",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 110,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 110,
              "flight": {
                "carrier": "TP",
                "number": "1050"
              },
              "id": "GrgsDmMZHjE05oBQ",
              "cabin": "COACH",
              "bookingCode": "M",
              "bookingCodeCount": 7,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LIsHFnz4APSeMOdc",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T09:35+01:00",
                  "departureTime": "2016-12-01T06:45+00:00",
                  "origin": "LIS",
                  "destination": "BCN",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 110,
                  "mileage": 617,
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
              "id": "AKih2LMJAbPwSyMkFo3g3h9JTTYavEmuae2V7Z2rQlsA",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "BCN",
              "basisCode": "M04BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AKih2LMJAbPwSyMkFo3g3h9JTTYavEmuae2V7Z2rQlsA",
              "segmentId": "GrgsDmMZHjE05oBQ"
            }
          ],
          "baseFareTotal": "EUR125.00",
          "saleFareTotal": "EUR125.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR182.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP BCN 140.27M04BSC0A NUC 140.27 END ROE 0.891079 FARE EUR 125.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T01:44-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR202.91",
      "id": "Y8gpwDu4AqNNCijve3Yoa4007",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 110,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 110,
              "flight": {
                "carrier": "TP",
                "number": "1044"
              },
              "id": "GAlrpeJn00-E761N",
              "cabin": "COACH",
              "bookingCode": "B",
              "bookingCodeCount": 1,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LGCFpNklM+hy7+sp",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T17:20+01:00",
                  "departureTime": "2016-12-01T14:30+00:00",
                  "origin": "LIS",
                  "destination": "BCN",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 110,
                  "mileage": 617,
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
              "id": "AMqk5IwyiPfT7B33lBVJDG7Y0JccR+CUh/OOMx96qOjQ",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "BCN",
              "basisCode": "B04BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AMqk5IwyiPfT7B33lBVJDG7Y0JccR+CUh/OOMx96qOjQ",
              "segmentId": "GAlrpeJn00-E761N"
            }
          ],
          "baseFareTotal": "EUR145.00",
          "saleFareTotal": "EUR145.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR202.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP BCN 162.72B04BSC0A NUC 162.72 END ROE 0.891079 FARE EUR 145.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T09:29-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR202.91",
      "id": "Y8gpwDu4AqNNCijve3Yoa4008",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 110,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 110,
              "flight": {
                "carrier": "TP",
                "number": "1038"
              },
              "id": "GOMT9xlUNkKWi4A9",
              "cabin": "COACH",
              "bookingCode": "B",
              "bookingCodeCount": 1,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lv9w8eB2mb6GubPf",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T13:50+01:00",
                  "departureTime": "2016-12-01T11:00+00:00",
                  "origin": "LIS",
                  "destination": "BCN",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 110,
                  "mileage": 617,
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
              "id": "AMqk5IwyiPfT7B33lBVJDG7Y0JccR+CUh/OOMx96qOjQ",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "BCN",
              "basisCode": "B04BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AMqk5IwyiPfT7B33lBVJDG7Y0JccR+CUh/OOMx96qOjQ",
              "segmentId": "GOMT9xlUNkKWi4A9"
            }
          ],
          "baseFareTotal": "EUR145.00",
          "saleFareTotal": "EUR145.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR202.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP BCN 162.72B04BSC0A NUC 162.72 END ROE 0.891079 FARE EUR 145.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T05:59-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR307.91",
      "id": "Y8gpwDu4AqNNCijve3Yoa4009",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 110,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 110,
              "flight": {
                "carrier": "TP",
                "number": "1040"
              },
              "id": "G-YqGe9Sfuu3lWBz",
              "cabin": "BUSINESS",
              "bookingCode": "C",
              "bookingCodeCount": 8,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L3bLplUxbecnwYRa",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T11:50+01:00",
                  "departureTime": "2016-12-01T09:00+00:00",
                  "origin": "LIS",
                  "destination": "BCN",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 110,
                  "mileage": 617,
                  "meal": "Breakfast"
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
              "id": "A5PT+cEvqyxryJ//+JGMmxQY3xpMnppJDBkc1L2Ar1nw",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "BCN",
              "basisCode": "C04EXE0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A5PT+cEvqyxryJ//+JGMmxQY3xpMnppJDBkc1L2Ar1nw",
              "segmentId": "G-YqGe9Sfuu3lWBz"
            }
          ],
          "baseFareTotal": "EUR243.00",
          "saleFareTotal": "EUR243.00",
          "saleTaxTotal": "EUR64.91",
          "saleTotal": "EUR307.91",
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
              "salePrice": "EUR50.00"
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
          "fareCalculation": "LIS TP BCN 272.70C04EXE0A NUC 272.70 END ROE 0.891079 FARE EUR 243.00 XT 4.03PT 10.88YP 50.00YQ",
          "latestTicketingTime": "2016-12-01T03:59-05:00",
          "ptc": "ADT"
        }
      ]
    }
  ]
  }
  }
  '

  lis_bru = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "NQkgW8JlBOxhYKnHh0PVzj",
  "data": {
    "kind": "qpxexpress#data",
    "airport": [
      {
        "kind": "qpxexpress#airportData",
        "code": "BRU",
        "city": "BRU",
        "name": "Brussels Airport"
      },
      {
        "kind": "qpxexpress#airportData",
        "code": "LIS",
        "city": "LIS",
        "name": "Lisbon"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "BRU",
        "name": "Brussels"
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
        "id": "YR_I",
        "name": "SN YR surcharge"
      },
      {
        "kind": "qpxexpress#taxData",
        "id": "YQ_I",
        "name": "SN YQ surcharge"
      }
    ],
    "carrier": [
      {
        "kind": "qpxexpress#carrierData",
        "code": "SN",
        "name": "SN Brussels Airlines"
      },
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
      "saleTotal": "EUR171.91",
      "id": "Cbvo2po4fSJTbBLlHGgdpB001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 165,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 165,
              "flight": {
                "carrier": "SN",
                "number": "6412"
              },
              "id": "GtgzpD7vOKwml7gT",
              "cabin": "COACH",
              "bookingCode": "Q",
              "bookingCodeCount": 6,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LltRu-GWREoahtC2",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T23:40+01:00",
                  "departureTime": "2016-12-01T19:55+00:00",
                  "origin": "LIS",
                  "destination": "BRU",
                  "originTerminal": "1",
                  "duration": 165,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1067
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
              "id": "A7FLMqd9OAIbX+aQHsgxquilletKPddJ2xQRqDi9bxxM",
              "carrier": "SN",
              "origin": "LIS",
              "destination": "BRU",
              "basisCode": "QRCLOWM0"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A7FLMqd9OAIbX+aQHsgxquilletKPddJ2xQRqDi9bxxM",
              "segmentId": "GtgzpD7vOKwml7gT"
            }
          ],
          "baseFareTotal": "EUR107.00",
          "saleFareTotal": "EUR107.00",
          "saleTaxTotal": "EUR64.91",
          "saleTotal": "EUR171.91",
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
              "salePrice": "EUR34.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR16.00"
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
          "fareCalculation": "LIS SN BRU 120.07QRCLOWM0 NUC 120.07 END ROE 0.891079 FARE EUR 107.00 XT 4.03PT 10.88YP 34.00YQ 16.00YR",
          "latestTicketingTime": "2016-12-01T14:54-05:00",
          "ptc": "ADT",
          "refundable": true
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR215.91",
      "id": "Cbvo2po4fSJTbBLlHGgdpB002",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 165,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 165,
              "flight": {
                "carrier": "TP",
                "number": "612"
              },
              "id": "Gt-Tyik74FFmu8pb",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LkhL5L0-6TXYz443",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T23:40+01:00",
                  "departureTime": "2016-12-01T19:55+00:00",
                  "origin": "LIS",
                  "destination": "BRU",
                  "originTerminal": "1",
                  "duration": 165,
                  "mileage": 1067,
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
              "id": "A0Zj8F3/fXZh3COXRDUpQ2dh8FjxNhTz8wjAQwpHlNpg",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "BRU",
              "basisCode": "H11BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A0Zj8F3/fXZh3COXRDUpQ2dh8FjxNhTz8wjAQwpHlNpg",
              "segmentId": "Gt-Tyik74FFmu8pb"
            }
          ],
          "baseFareTotal": "EUR158.00",
          "saleFareTotal": "EUR158.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR215.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP BRU 177.31H11BSC0A NUC 177.31 END ROE 0.891079 FARE EUR 158.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T14:54-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR220.91",
      "id": "Cbvo2po4fSJTbBLlHGgdpB003",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 160,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 160,
              "flight": {
                "carrier": "TP",
                "number": "6774"
              },
              "id": "GzCT-yzbQWlu13OU",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 6,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LRUWAVg-JpNcNk2t",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T16:35+01:00",
                  "departureTime": "2016-12-01T12:55+00:00",
                  "origin": "LIS",
                  "destination": "BRU",
                  "originTerminal": "1",
                  "duration": 160,
                  "operatingDisclosure": "OPERATED BY BRUSSELS AIRLINES",
                  "mileage": 1067
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
              "id": "A9BKhlqhVItWx5nt49f+wF2NidP61r+QCTBcm4vdzoH6",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "BRU",
              "basisCode": "H11CLC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A9BKhlqhVItWx5nt49f+wF2NidP61r+QCTBcm4vdzoH6",
              "segmentId": "GzCT-yzbQWlu13OU"
            }
          ],
          "baseFareTotal": "EUR163.00",
          "saleFareTotal": "EUR163.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR220.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP BRU 182.92H11CLC0A NUC 182.92 END ROE 0.891079 FARE EUR 163.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T07:54-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR276.91",
      "id": "Cbvo2po4fSJTbBLlHGgdpB004",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 160,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 160,
              "flight": {
                "carrier": "SN",
                "number": "3816"
              },
              "id": "GWE1mdObNfJeetek",
              "cabin": "COACH",
              "bookingCode": "M",
              "bookingCodeCount": 5,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L+LMN3-raOCO-ORL",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T16:35+01:00",
                  "departureTime": "2016-12-01T12:55+00:00",
                  "origin": "LIS",
                  "destination": "BRU",
                  "originTerminal": "1",
                  "duration": 160,
                  "mileage": 1067,
                  "meal": "Snack or Brunch"
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
              "id": "A+oInbVGmF80D92L4rpVbvin1fuhFaLYFVHCIbv0dIBc",
              "carrier": "SN",
              "origin": "LIS",
              "destination": "BRU",
              "basisCode": "MFFXOWM0"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A+oInbVGmF80D92L4rpVbvin1fuhFaLYFVHCIbv0dIBc",
              "segmentId": "GWE1mdObNfJeetek"
            }
          ],
          "baseFareTotal": "EUR206.00",
          "saleFareTotal": "EUR206.00",
          "saleTaxTotal": "EUR70.91",
          "saleTotal": "EUR276.91",
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
              "salePrice": "EUR40.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR16.00"
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
          "fareCalculation": "LIS SN BRU 231.18MFFXOWM0 NUC 231.18 END ROE 0.891079 FARE EUR 206.00 XT 4.03PT 10.88YP 40.00YQ 16.00YR",
          "latestTicketingTime": "2016-12-01T07:54-05:00",
          "ptc": "ADT",
          "refundable": true
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR278.91",
      "id": "Cbvo2po4fSJTbBLlHGgdpB005",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 165,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 165,
              "flight": {
                "carrier": "TP",
                "number": "618"
              },
              "id": "GjXdwIZOFVF-Odfc",
              "cabin": "COACH",
              "bookingCode": "M",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LN8+yKzCkqff5kc-",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T18:00+01:00",
                  "departureTime": "2016-12-01T14:15+00:00",
                  "origin": "LIS",
                  "destination": "BRU",
                  "originTerminal": "1",
                  "duration": 165,
                  "mileage": 1067,
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
              "id": "ArCMo98E7o5kn3u88ef8x+paH0MQeL2BSJk7exgtiQNk",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "BRU",
              "basisCode": "M11BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "ArCMo98E7o5kn3u88ef8x+paH0MQeL2BSJk7exgtiQNk",
              "segmentId": "GjXdwIZOFVF-Odfc"
            }
          ],
          "baseFareTotal": "EUR221.00",
          "saleFareTotal": "EUR221.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR278.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP BRU 248.01M11BSC0A NUC 248.01 END ROE 0.891079 FARE EUR 221.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T09:14-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR328.91",
      "id": "Cbvo2po4fSJTbBLlHGgdpB006",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 165,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 165,
              "flight": {
                "carrier": "TP",
                "number": "616"
              },
              "id": "GQqyL3fK+1psoEKO",
              "cabin": "COACH",
              "bookingCode": "B",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L+7j20AD03yHJ8T2",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T12:00+01:00",
                  "departureTime": "2016-12-01T08:15+00:00",
                  "origin": "LIS",
                  "destination": "BRU",
                  "originTerminal": "1",
                  "duration": 165,
                  "mileage": 1067,
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
              "id": "AIDdwHhRYZpDn6krGFtvXTu2r6DtKEr+nuM1oMBiWtmE",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "BRU",
              "basisCode": "B11BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AIDdwHhRYZpDn6krGFtvXTu2r6DtKEr+nuM1oMBiWtmE",
              "segmentId": "GQqyL3fK+1psoEKO"
            }
          ],
          "baseFareTotal": "EUR271.00",
          "saleFareTotal": "EUR271.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR328.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP BRU 304.12B11BSC0A NUC 304.12 END ROE 0.891079 FARE EUR 271.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T03:14-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR361.91",
      "id": "Cbvo2po4fSJTbBLlHGgdpB007",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 165,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 165,
              "flight": {
                "carrier": "SN",
                "number": "6410"
              },
              "id": "GtxgbZz5Jk2CRUYc",
              "cabin": "COACH",
              "bookingCode": "B",
              "bookingCodeCount": 6,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L8eg2q9p+FyPz79r",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T18:00+01:00",
                  "departureTime": "2016-12-01T14:15+00:00",
                  "origin": "LIS",
                  "destination": "BRU",
                  "originTerminal": "1",
                  "duration": 165,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1067
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
              "id": "Azn/5tclbDzMFZ6180UgT9CQkGSCvu7uJER07THS2x//",
              "carrier": "SN",
              "origin": "LIS",
              "destination": "BRU",
              "basisCode": "BFFXOWM0"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Azn/5tclbDzMFZ6180UgT9CQkGSCvu7uJER07THS2x//",
              "segmentId": "GtxgbZz5Jk2CRUYc"
            }
          ],
          "baseFareTotal": "EUR291.00",
          "saleFareTotal": "EUR291.00",
          "saleTaxTotal": "EUR70.91",
          "saleTotal": "EUR361.91",
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
              "salePrice": "EUR40.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR16.00"
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
          "fareCalculation": "LIS SN BRU 326.57BFFXOWM0 NUC 326.57 END ROE 0.891079 FARE EUR 291.00 XT 4.03PT 10.88YP 40.00YQ 16.00YR",
          "latestTicketingTime": "2016-12-01T09:14-05:00",
          "ptc": "ADT",
          "refundable": true
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR479.91",
      "id": "Cbvo2po4fSJTbBLlHGgdpB008",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 165,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 165,
              "flight": {
                "carrier": "SN",
                "number": "6402"
              },
              "id": "GFCYnRKHdz-1tne3",
              "cabin": "COACH",
              "bookingCode": "Y",
              "bookingCodeCount": 6,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lpg88tPc+Rm6DmhS",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T12:00+01:00",
                  "departureTime": "2016-12-01T08:15+00:00",
                  "origin": "LIS",
                  "destination": "BRU",
                  "originTerminal": "1",
                  "duration": 165,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1067
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
              "id": "AxBuOAeANO07OcFgPmMj5w0LTsvHAPmFMEGiC7fsr18k",
              "carrier": "SN",
              "origin": "LIS",
              "destination": "BRU",
              "basisCode": "YFFXOWM0"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AxBuOAeANO07OcFgPmMj5w0LTsvHAPmFMEGiC7fsr18k",
              "segmentId": "GFCYnRKHdz-1tne3"
            }
          ],
          "baseFareTotal": "EUR409.00",
          "saleFareTotal": "EUR409.00",
          "saleTaxTotal": "EUR70.91",
          "saleTotal": "EUR479.91",
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
              "salePrice": "EUR40.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR16.00"
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
          "fareCalculation": "LIS SN BRU 458.99YFFXOWM0 NUC 458.99 END ROE 0.891079 FARE EUR 409.00 XT 4.03PT 10.88YP 40.00YQ 16.00YR",
          "latestTicketingTime": "2016-12-01T03:14-05:00",
          "ptc": "ADT",
          "refundable": true
        }
      ]
    }
  ]
  }
  }
  '

  lis_ams = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "CrPW8cKJQMWUoeCOs0PVzj",
  "data": {
    "kind": "qpxexpress#data",
    "airport": [
      {
        "kind": "qpxexpress#airportData",
        "code": "AMS",
        "city": "AMS",
        "name": "Amsterdam Schiphol Airport"
      },
      {
        "kind": "qpxexpress#airportData",
        "code": "LIS",
        "city": "LIS",
        "name": "Lisbon"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "AMS",
        "name": "Amsterdam"
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
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "321",
        "name": "Airbus A321"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "73H",
        "name": "Boeing 737"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "E90",
        "name": "Embraer RJ-190"
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
        "code": "KL",
        "name": "KLM Royal Dutch Airlines"
      },
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
      "saleTotal": "EUR302.91",
      "id": "DpYoHXPPXsGSMyzs8UaJoU001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 180,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 180,
              "flight": {
                "carrier": "TP",
                "number": "668"
              },
              "id": "GJZ7JXNnrUaW5jAJ",
              "cabin": "COACH",
              "bookingCode": "M",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lf-92auj+FVBOotY",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T23:55+01:00",
                  "departureTime": "2016-12-01T19:55+00:00",
                  "origin": "LIS",
                  "destination": "AMS",
                  "originTerminal": "1",
                  "duration": 180,
                  "mileage": 1147,
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
              "id": "AeGfvHNIcVRSi1i9A7JvAK4GDFxfJP5nv+2tcEboS9Eo",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "AMS",
              "basisCode": "M19BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AeGfvHNIcVRSi1i9A7JvAK4GDFxfJP5nv+2tcEboS9Eo",
              "segmentId": "GJZ7JXNnrUaW5jAJ"
            }
          ],
          "baseFareTotal": "EUR245.00",
          "saleFareTotal": "EUR245.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR302.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP AMS 274.94M19BSC0A NUC 274.94 END ROE 0.891079 FARE EUR 245.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T14:54-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR423.91",
      "id": "DpYoHXPPXsGSMyzs8UaJoU002",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 190,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 190,
              "flight": {
                "carrier": "KL",
                "number": "1694"
              },
              "id": "Gykzp3Db+rDAf-I5",
              "cabin": "COACH",
              "bookingCode": "Y",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LQi7b1GPVG+k-aSx",
                  "aircraft": "73H",
                  "arrivalTime": "2016-12-01T19:35+01:00",
                  "departureTime": "2016-12-01T15:25+00:00",
                  "origin": "LIS",
                  "destination": "AMS",
                  "originTerminal": "1",
                  "duration": 190,
                  "mileage": 1147,
                  "meal": "Snack or Brunch"
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
              "id": "A2NNgtYagYOUBrA4ZEiLlo6j5GTGCJen+KSqJpBb3mmY",
              "carrier": "KL",
              "origin": "LIS",
              "destination": "AMS",
              "basisCode": "YWKWPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A2NNgtYagYOUBrA4ZEiLlo6j5GTGCJen+KSqJpBb3mmY",
              "segmentId": "Gykzp3Db+rDAf-I5"
            }
          ],
          "baseFareTotal": "EUR409.00",
          "saleFareTotal": "EUR409.00",
          "saleTaxTotal": "EUR14.91",
          "saleTotal": "EUR423.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR4.03"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR10.88"
            }
          ],
          "fareCalculation": "LIS KL AMS 458.99YWKWPT NUC 458.99 END ROE 0.891079 FARE EUR 409.00 XT 4.03PT 10.88YP",
          "latestTicketingTime": "2016-12-01T10:24-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR432.91",
      "id": "DpYoHXPPXsGSMyzs8UaJoU003",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 180,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 180,
              "flight": {
                "carrier": "TP",
                "number": "662"
              },
              "id": "GtyFsAX4gL8A0EEf",
              "cabin": "COACH",
              "bookingCode": "Y",
              "bookingCodeCount": 8,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LC3TxzhSd270WtlR",
                  "aircraft": "321",
                  "arrivalTime": "2016-12-01T17:00+01:00",
                  "departureTime": "2016-12-01T13:00+00:00",
                  "origin": "LIS",
                  "destination": "AMS",
                  "originTerminal": "1",
                  "duration": 180,
                  "mileage": 1147,
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
              "id": "AwccLGh7RZs8vXGNbOHv+sLV4aV/vvfsw70R5niBfY6I",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "AMS",
              "basisCode": "Y19BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AwccLGh7RZs8vXGNbOHv+sLV4aV/vvfsw70R5niBfY6I",
              "segmentId": "GtyFsAX4gL8A0EEf"
            }
          ],
          "baseFareTotal": "EUR375.00",
          "saleFareTotal": "EUR375.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR432.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP AMS 420.83Y19BSC0A NUC 420.83 END ROE 0.891079 FARE EUR 375.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T07:59-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR432.91",
      "id": "DpYoHXPPXsGSMyzs8UaJoU004",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 180,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 180,
              "flight": {
                "carrier": "TP",
                "number": "664"
              },
              "id": "GdZ+TPqdMV4j0lGC",
              "cabin": "COACH",
              "bookingCode": "Y",
              "bookingCodeCount": 2,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LAJnWEw1TJ27u3SD",
                  "aircraft": "E90",
                  "arrivalTime": "2016-12-01T12:10+01:00",
                  "departureTime": "2016-12-01T08:10+00:00",
                  "origin": "LIS",
                  "destination": "AMS",
                  "originTerminal": "1",
                  "duration": 180,
                  "operatingDisclosure": "OPERATED BY PORTUGALIA - COMPANHIA PORTUGUESA",
                  "mileage": 1147,
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
              "id": "AwccLGh7RZs8vXGNbOHv+sLV4aV/vvfsw70R5niBfY6I",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "AMS",
              "basisCode": "Y19BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AwccLGh7RZs8vXGNbOHv+sLV4aV/vvfsw70R5niBfY6I",
              "segmentId": "GdZ+TPqdMV4j0lGC"
            }
          ],
          "baseFareTotal": "EUR375.00",
          "saleFareTotal": "EUR375.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR432.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP AMS 420.83Y19BSC0A NUC 420.83 END ROE 0.891079 FARE EUR 375.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T03:09-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR618.91",
      "id": "DpYoHXPPXsGSMyzs8UaJoU005",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 185,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 185,
              "flight": {
                "carrier": "KL",
                "number": "1692"
              },
              "id": "GlkWSCSi9ui0BH1O",
              "cabin": "BUSINESS",
              "bookingCode": "J",
              "bookingCodeCount": 2,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LuMH5gogULtmSSXj",
                  "aircraft": "73H",
                  "arrivalTime": "2016-12-01T09:05+01:00",
                  "departureTime": "2016-12-01T05:00+00:00",
                  "origin": "LIS",
                  "destination": "AMS",
                  "originTerminal": "1",
                  "duration": 185,
                  "mileage": 1147,
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
              "id": "ALTH3rZFPUlK5lVCUOGn9MJeXdo57AVoemizCK1EdgCc",
              "carrier": "KL",
              "origin": "LIS",
              "destination": "AMS",
              "basisCode": "J7FFWPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "ALTH3rZFPUlK5lVCUOGn9MJeXdo57AVoemizCK1EdgCc",
              "segmentId": "GlkWSCSi9ui0BH1O"
            }
          ],
          "baseFareTotal": "EUR604.00",
          "saleFareTotal": "EUR604.00",
          "saleTaxTotal": "EUR14.91",
          "saleTotal": "EUR618.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR4.03"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR10.88"
            }
          ],
          "fareCalculation": "LIS KL AMS 677.82J7FFWPT NUC 677.82 END ROE 0.891079 FARE EUR 604.00 XT 4.03PT 10.88YP",
          "latestTicketingTime": "2016-11-30T23:59-05:00",
          "ptc": "ADT",
          "refundable": true
        }
      ]
    }
  ]
  }
  }
  '

  lis_mad = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "qwu4IpFYxRhtRjsXU0PVzj",
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
        "code": "MAD",
        "city": "MAD",
        "name": "Madrid Adolfo Suarez-Barajas"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "LIS",
        "name": "Lisbon"
      },
      {
        "kind": "qpxexpress#cityData",
        "code": "MAD",
        "name": "Madrid"
      }
    ],
    "aircraft": [
      {
        "kind": "qpxexpress#aircraftData",
        "code": "319",
        "name": "Airbus A319"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "320",
        "name": "Airbus A320"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "E90",
        "name": "Embraer RJ-190"
      }
    ],
    "tax": [
      {
        "kind": "qpxexpress#taxData",
        "id": "PT_001",
        "name": "Portugal Security Tax"
      },
      {
        "kind": "qpxexpress#taxData",
        "id": "YP_003",
        "name": "Portugal Passenger Service Charge"
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
      },
      {
        "kind": "qpxexpress#carrierData",
        "code": "UX",
        "name": "Air Europa Lineas Aereas, S.A."
      }
    ]
  },
  "tripOption": [
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR48.91",
      "id": "WCMybpzMY3GLORFNJ06CwJ001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 75,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 75,
              "flight": {
                "carrier": "UX",
                "number": "1156"
              },
              "id": "GAc750x0dxlUCuf3",
              "cabin": "COACH",
              "bookingCode": "A",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LoWuBsGAgo7CRs2m",
                  "aircraft": "E90",
                  "arrivalTime": "2016-12-01T18:05+01:00",
                  "departureTime": "2016-12-01T15:50+00:00",
                  "origin": "LIS",
                  "destination": "MAD",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 75,
                  "operatingDisclosure": "OPERATED BY AIR EUROPA EXPRESS",
                  "mileage": 318,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "A2J7EkWpyYus8QtA7al+UM9J7+hbYr7L/WfJyex3LRLQ",
              "carrier": "UX",
              "origin": "LIS",
              "destination": "MAD",
              "basisCode": "AWEUPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A2J7EkWpyYus8QtA7al+UM9J7+hbYr7L/WfJyex3LRLQ",
              "segmentId": "GAc750x0dxlUCuf3"
            }
          ],
          "baseFareTotal": "EUR34.00",
          "saleFareTotal": "EUR34.00",
          "saleTaxTotal": "EUR14.91",
          "saleTotal": "EUR48.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR4.03"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR10.88"
            }
          ],
          "fareCalculation": "LIS UX MAD 38.15AWEUPT NUC 38.15 END ROE 0.891079 FARE EUR 34.00 XT 4.03PT 10.88YP",
          "latestTicketingTime": "2016-11-29T05:11-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR61.91",
      "id": "WCMybpzMY3GLORFNJ06CwJ002",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 80,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 80,
              "flight": {
                "carrier": "TP",
                "number": "1022"
              },
              "id": "GBwnxiwf89zA4jJh",
              "cabin": "COACH",
              "bookingCode": "E",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LydHwr8xNXt4BVdA",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T23:00+01:00",
                  "departureTime": "2016-12-01T20:40+00:00",
                  "origin": "LIS",
                  "destination": "MAD",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 80,
                  "mileage": 318,
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
              "id": "Az6gNVBg1O8rfnHz89ixUd6ZR3WUzx+HC8lGJeP8eYeE",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "MAD",
              "basisCode": "E04BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Az6gNVBg1O8rfnHz89ixUd6ZR3WUzx+HC8lGJeP8eYeE",
              "segmentId": "GBwnxiwf89zA4jJh"
            }
          ],
          "baseFareTotal": "EUR32.00",
          "saleFareTotal": "EUR32.00",
          "saleTaxTotal": "EUR29.91",
          "saleTotal": "EUR61.91",
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
              "salePrice": "EUR15.00"
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
          "fareCalculation": "LIS TP MAD 35.91E04BSC0A NUC 35.91 END ROE 0.891079 FARE EUR 32.00 XT 4.03PT 10.88YP 15.00YQ",
          "latestTicketingTime": "2016-12-01T15:39-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR69.91",
      "id": "WCMybpzMY3GLORFNJ06CwJ003",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 80,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 80,
              "flight": {
                "carrier": "TP",
                "number": "1018"
              },
              "id": "GBxKjPiAc5VaEQsO",
              "cabin": "COACH",
              "bookingCode": "U",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LKbYrwvw6Q9xRYgK",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T20:20+01:00",
                  "departureTime": "2016-12-01T18:00+00:00",
                  "origin": "LIS",
                  "destination": "MAD",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 80,
                  "mileage": 318,
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
              "id": "Af6wADuPa+Z5R5XBcNex4D/geu+RTTnzWRoNn7lF9TkY",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "MAD",
              "basisCode": "U04BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Af6wADuPa+Z5R5XBcNex4D/geu+RTTnzWRoNn7lF9TkY",
              "segmentId": "GBxKjPiAc5VaEQsO"
            }
          ],
          "baseFareTotal": "EUR40.00",
          "saleFareTotal": "EUR40.00",
          "saleTaxTotal": "EUR29.91",
          "saleTotal": "EUR69.91",
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
              "salePrice": "EUR15.00"
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
          "fareCalculation": "LIS TP MAD 44.88U04BSC0A NUC 44.88 END ROE 0.891079 FARE EUR 40.00 XT 4.03PT 10.88YP 15.00YQ",
          "latestTicketingTime": "2016-12-01T12:59-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR98.91",
      "id": "WCMybpzMY3GLORFNJ06CwJ005",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 80,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 80,
              "flight": {
                "carrier": "TP",
                "number": "1016"
              },
              "id": "GnZrwdZMAnagr+tH",
              "cabin": "COACH",
              "bookingCode": "A",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L6D+TgYVdTarM6hM",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T17:50+01:00",
                  "departureTime": "2016-12-01T15:30+00:00",
                  "origin": "LIS",
                  "destination": "MAD",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 80,
                  "mileage": 318,
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
              "id": "AefVCBen+wZ4AkFGgaDjRn2c9OUNdjW2iay1N1l6KhXI",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "MAD",
              "basisCode": "A04BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AefVCBen+wZ4AkFGgaDjRn2c9OUNdjW2iay1N1l6KhXI",
              "segmentId": "GnZrwdZMAnagr+tH"
            }
          ],
          "baseFareTotal": "EUR54.00",
          "saleFareTotal": "EUR54.00",
          "saleTaxTotal": "EUR44.91",
          "saleTotal": "EUR98.91",
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
              "salePrice": "EUR30.00"
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
          "fareCalculation": "LIS TP MAD 60.60A04BSC0A NUC 60.60 END ROE 0.891079 FARE EUR 54.00 XT 4.03PT 10.88YP 30.00YQ",
          "latestTicketingTime": "2016-12-01T10:29-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR99.91",
      "id": "WCMybpzMY3GLORFNJ06CwJ004",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 75,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 75,
              "flight": {
                "carrier": "UX",
                "number": "1150"
              },
              "id": "Gn5M2Y8cNN4ZMGG6",
              "cabin": "COACH",
              "bookingCode": "R",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LiuL2xm5xnFv7pPz",
                  "aircraft": "E90",
                  "arrivalTime": "2016-12-01T13:40+01:00",
                  "departureTime": "2016-12-01T11:25+00:00",
                  "origin": "LIS",
                  "destination": "MAD",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 75,
                  "operatingDisclosure": "OPERATED BY AIR EUROPA EXPRESS",
                  "mileage": 318,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "AzJK3JMf868TZRG9Ct8Z7vMpWlTL2w/C7u/7LCxKaaa2",
              "carrier": "UX",
              "origin": "LIS",
              "destination": "MAD",
              "basisCode": "RWEUPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AzJK3JMf868TZRG9Ct8Z7vMpWlTL2w/C7u/7LCxKaaa2",
              "segmentId": "Gn5M2Y8cNN4ZMGG6"
            }
          ],
          "baseFareTotal": "EUR85.00",
          "saleFareTotal": "EUR85.00",
          "saleTaxTotal": "EUR14.91",
          "saleTotal": "EUR99.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR4.03"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR10.88"
            }
          ],
          "fareCalculation": "LIS UX MAD 95.38RWEUPT NUC 95.38 END ROE 0.891079 FARE EUR 85.00 XT 4.03PT 10.88YP",
          "latestTicketingTime": "2016-11-29T05:11-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR159.91",
      "id": "WCMybpzMY3GLORFNJ06CwJ00A",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 80,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 80,
              "flight": {
                "carrier": "TP",
                "number": "1028"
              },
              "id": "GlQLU9lWjbqHtQsl",
              "cabin": "BUSINESS",
              "bookingCode": "J",
              "bookingCodeCount": 1,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lnt8ebQHwlfai1WB",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T11:35+01:00",
                  "departureTime": "2016-12-01T09:15+00:00",
                  "origin": "LIS",
                  "destination": "MAD",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 80,
                  "mileage": 318,
                  "meal": "Breakfast"
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
              "id": "A46UthrhkxMbFRMIgk3iDvvZj8LbIwx4+cTY+vmhG3P2",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "MAD",
              "basisCode": "J04EXE0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A46UthrhkxMbFRMIgk3iDvvZj8LbIwx4+cTY+vmhG3P2",
              "segmentId": "GlQLU9lWjbqHtQsl"
            }
          ],
          "baseFareTotal": "EUR95.00",
          "saleFareTotal": "EUR95.00",
          "saleTaxTotal": "EUR64.91",
          "saleTotal": "EUR159.91",
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
              "salePrice": "EUR50.00"
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
          "fareCalculation": "LIS TP MAD 106.61J04EXE0A NUC 106.61 END ROE 0.891079 FARE EUR 95.00 XT 4.03PT 10.88YP 50.00YQ",
          "latestTicketingTime": "2016-12-01T04:14-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR159.91",
      "id": "WCMybpzMY3GLORFNJ06CwJ009",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 80,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 80,
              "flight": {
                "carrier": "TP",
                "number": "1024"
              },
              "id": "GBI7yeO3QfAvw3Pm",
              "cabin": "BUSINESS",
              "bookingCode": "J",
              "bookingCodeCount": 2,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lwto9zrmftkAHcfi",
                  "aircraft": "E90",
                  "arrivalTime": "2016-12-01T09:25+01:00",
                  "departureTime": "2016-12-01T07:05+00:00",
                  "origin": "LIS",
                  "destination": "MAD",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 80,
                  "operatingDisclosure": "OPERATED BY PORTUGALIA - COMPANHIA PORTUGUESA",
                  "mileage": 318,
                  "meal": "Breakfast"
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
              "id": "A46UthrhkxMbFRMIgk3iDvvZj8LbIwx4+cTY+vmhG3P2",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "MAD",
              "basisCode": "J04EXE0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A46UthrhkxMbFRMIgk3iDvvZj8LbIwx4+cTY+vmhG3P2",
              "segmentId": "GBI7yeO3QfAvw3Pm"
            }
          ],
          "baseFareTotal": "EUR95.00",
          "saleFareTotal": "EUR95.00",
          "saleTaxTotal": "EUR64.91",
          "saleTotal": "EUR159.91",
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
              "salePrice": "EUR50.00"
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
          "fareCalculation": "LIS TP MAD 106.61J04EXE0A NUC 106.61 END ROE 0.891079 FARE EUR 95.00 XT 4.03PT 10.88YP 50.00YQ",
          "latestTicketingTime": "2016-12-01T02:04-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR159.91",
      "id": "WCMybpzMY3GLORFNJ06CwJ008",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 80,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 80,
              "flight": {
                "carrier": "TP",
                "number": "1014"
              },
              "id": "GiLMfwUECV8R3sRy",
              "cabin": "BUSINESS",
              "bookingCode": "J",
              "bookingCodeCount": 2,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LaELAMrrn+Him8YF",
                  "aircraft": "E90",
                  "arrivalTime": "2016-12-01T13:40+01:00",
                  "departureTime": "2016-12-01T11:20+00:00",
                  "origin": "LIS",
                  "destination": "MAD",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 80,
                  "operatingDisclosure": "OPERATED BY PORTUGALIA - COMPANHIA PORTUGUESA",
                  "mileage": 318,
                  "meal": "Snack or Brunch"
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
              "id": "A46UthrhkxMbFRMIgk3iDvvZj8LbIwx4+cTY+vmhG3P2",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "MAD",
              "basisCode": "J04EXE0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A46UthrhkxMbFRMIgk3iDvvZj8LbIwx4+cTY+vmhG3P2",
              "segmentId": "GiLMfwUECV8R3sRy"
            }
          ],
          "baseFareTotal": "EUR95.00",
          "saleFareTotal": "EUR95.00",
          "saleTaxTotal": "EUR64.91",
          "saleTotal": "EUR159.91",
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
              "salePrice": "EUR50.00"
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
          "fareCalculation": "LIS TP MAD 106.61J04EXE0A NUC 106.61 END ROE 0.891079 FARE EUR 95.00 XT 4.03PT 10.88YP 50.00YQ",
          "latestTicketingTime": "2016-12-01T06:19-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR160.91",
      "id": "WCMybpzMY3GLORFNJ06CwJ007",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 75,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 75,
              "flight": {
                "carrier": "UX",
                "number": "1152"
              },
              "id": "GZ0eElYuOBQm9gSO",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LJMdq4vNgH2lmdqR",
                  "aircraft": "E90",
                  "arrivalTime": "2016-12-01T09:45+01:00",
                  "departureTime": "2016-12-01T07:30+00:00",
                  "origin": "LIS",
                  "destination": "MAD",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 75,
                  "operatingDisclosure": "OPERATED BY AIR EUROPA EXPRESS",
                  "mileage": 318,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "Abhq4Iwzn2gPXQOOyko0u0wEcPXmBD9z4HmJDm294ng2",
              "carrier": "UX",
              "origin": "LIS",
              "destination": "MAD",
              "basisCode": "HOWPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Abhq4Iwzn2gPXQOOyko0u0wEcPXmBD9z4HmJDm294ng2",
              "segmentId": "GZ0eElYuOBQm9gSO"
            }
          ],
          "baseFareTotal": "EUR146.00",
          "saleFareTotal": "EUR146.00",
          "saleTaxTotal": "EUR14.91",
          "saleTotal": "EUR160.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR4.03"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR10.88"
            }
          ],
          "fareCalculation": "LIS UX MAD 163.84HOWPT NUC 163.84 END ROE 0.891079 FARE EUR 146.00 XT 4.03PT 10.88YP",
          "latestTicketingTime": "2016-11-29T05:11-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR160.91",
      "id": "WCMybpzMY3GLORFNJ06CwJ006",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 75,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 75,
              "flight": {
                "carrier": "UX",
                "number": "1160"
              },
              "id": "GhpnY-NMaXycqFTD",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LEB55CjOHovICRK+",
                  "aircraft": "E90",
                  "arrivalTime": "2016-12-01T22:05+01:00",
                  "departureTime": "2016-12-01T19:50+00:00",
                  "origin": "LIS",
                  "destination": "MAD",
                  "originTerminal": "1",
                  "destinationTerminal": "2",
                  "duration": 75,
                  "operatingDisclosure": "OPERATED BY AIR EUROPA EXPRESS",
                  "mileage": 318,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "Abhq4Iwzn2gPXQOOyko0u0wEcPXmBD9z4HmJDm294ng2",
              "carrier": "UX",
              "origin": "LIS",
              "destination": "MAD",
              "basisCode": "HOWPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Abhq4Iwzn2gPXQOOyko0u0wEcPXmBD9z4HmJDm294ng2",
              "segmentId": "GhpnY-NMaXycqFTD"
            }
          ],
          "baseFareTotal": "EUR146.00",
          "saleFareTotal": "EUR146.00",
          "saleTaxTotal": "EUR14.91",
          "saleTotal": "EUR160.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR4.03"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR10.88"
            }
          ],
          "fareCalculation": "LIS UX MAD 163.84HOWPT NUC 163.84 END ROE 0.891079 FARE EUR 146.00 XT 4.03PT 10.88YP",
          "latestTicketingTime": "2016-11-29T05:11-05:00",
          "ptc": "ADT"
        }
      ]
    }
  ]
  }
  }
  '

  lis_ath = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "6hDNTirHyIRyuzx7b0PVzk",
  "data": {
    "kind": "qpxexpress#data",
    "airport": [
      {
        "kind": "qpxexpress#airportData",
        "code": "ATH",
        "city": "ATH",
        "name": "Athens Eleftherios Venizelos"
      },
      {
        "kind": "qpxexpress#airportData",
        "code": "LIS",
        "city": "LIS",
        "name": "Lisbon"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "ATH",
        "name": "Athens"
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
        "id": "YQ_F",
        "name": "A3 YQ surcharge"
      },
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
        "code": "A3",
        "name": "Aegean Airlines"
      },
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
      "saleTotal": "EUR143.91",
      "id": "dVJzBEE5D2HQvkLuMgsYV1001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 250,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 250,
              "flight": {
                "carrier": "A3",
                "number": "669"
              },
              "id": "GWjxhXtpN5o2lIwq",
              "cabin": "COACH",
              "bookingCode": "L",
              "bookingCodeCount": 5,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L5pEGEDbdoWSdxu9",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T18:05+02:00",
                  "departureTime": "2016-12-01T11:55+00:00",
                  "origin": "LIS",
                  "destination": "ATH",
                  "originTerminal": "1",
                  "duration": 250,
                  "mileage": 1782
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
              "id": "AGFJ4dohBWOZlCRrNfFRmYNgQf6swIO7lOHHrRsCBiiE",
              "carrier": "A3",
              "origin": "LIS",
              "destination": "ATH",
              "basisCode": "LNOBAGD"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AGFJ4dohBWOZlCRrNfFRmYNgQf6swIO7lOHHrRsCBiiE",
              "segmentId": "GWjxhXtpN5o2lIwq"
            }
          ],
          "baseFareTotal": "EUR126.00",
          "saleFareTotal": "EUR126.00",
          "saleTaxTotal": "EUR17.91",
          "saleTotal": "EUR143.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YQ_F",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YQ",
              "salePrice": "EUR3.00"
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
          "fareCalculation": "LIS A3 ATH Q42.64 98.75LNOBAGD NUC 141.39 END ROE 0.891079 FARE EUR 126.00 XT 4.03PT 10.88YP 3.00YQ",
          "latestTicketingTime": "2016-12-01T06:54-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR157.91",
      "id": "dVJzBEE5D2HQvkLuMgsYV1002",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 250,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 250,
              "flight": {
                "carrier": "TP",
                "number": "7410"
              },
              "id": "GYCL+b3lZcp+2Ke8",
              "cabin": "COACH",
              "bookingCode": "W",
              "bookingCodeCount": 6,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LEhFhqoqRVg-wMJt",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T18:05+02:00",
                  "departureTime": "2016-12-01T11:55+00:00",
                  "origin": "LIS",
                  "destination": "ATH",
                  "originTerminal": "1",
                  "duration": 250,
                  "operatingDisclosure": "OPERATED BY AEGEAN AIRLINES",
                  "mileage": 1782
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
              "id": "AO5nPX7EAmOMI33hSokRKBYbKezTubLr1vi18qXXkTOw",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "ATH",
              "basisCode": "W39CLC2E"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AO5nPX7EAmOMI33hSokRKBYbKezTubLr1vi18qXXkTOw",
              "segmentId": "GYCL+b3lZcp+2Ke8"
            }
          ],
          "baseFareTotal": "EUR96.00",
          "saleFareTotal": "EUR96.00",
          "saleTaxTotal": "EUR61.91",
          "saleTotal": "EUR157.91",
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
              "salePrice": "EUR47.00"
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
          "fareCalculation": "LIS TP ATH 107.73W39CLC2E NUC 107.73 END ROE 0.891079 FARE EUR 96.00 XT 4.03PT 10.88YP 47.00YQ",
          "latestTicketingTime": "2016-12-01T06:54-05:00",
          "ptc": "ADT"
        }
      ]
    }
  ]
  }
  }
  '

  lis_nce = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "1Dvwi1Y4ql8ZlI1SQ0PVzk",
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
        "code": "NCE",
        "city": "NCE",
        "name": "Nice Cote dAzur"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "LIS",
        "name": "Lisbon"
      },
      {
        "kind": "qpxexpress#cityData",
        "code": "NCE",
        "name": "Nice"
      }
    ],
    "aircraft": [
      {
        "kind": "qpxexpress#aircraftData",
        "code": "E90",
        "name": "Embraer RJ-190"
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
      "saleTotal": "EUR223.91",
      "id": "M2rk5I90Gh7LabRxTDcli9001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 155,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 155,
              "flight": {
                "carrier": "TP",
                "number": "488"
              },
              "id": "GInBI-wA-lyM0MDE",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LXFI3Un6HDzyEUMu",
                  "aircraft": "E90",
                  "arrivalTime": "2016-12-01T17:05+01:00",
                  "departureTime": "2016-12-01T13:30+00:00",
                  "origin": "LIS",
                  "destination": "NCE",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 155,
                  "operatingDisclosure": "OPERATED BY PORTUGALIA - COMPANHIA PORTUGUESA",
                  "mileage": 912,
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
              "id": "AQeTZjrOfVYwVrnofgPMpyizzH+UoqfSt3j7qDuz3lYY",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "NCE",
              "basisCode": "H14BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AQeTZjrOfVYwVrnofgPMpyizzH+UoqfSt3j7qDuz3lYY",
              "segmentId": "GInBI-wA-lyM0MDE"
            }
          ],
          "baseFareTotal": "EUR166.00",
          "saleFareTotal": "EUR166.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR223.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP NCE 186.29H14BSC0A NUC 186.29 END ROE 0.891079 FARE EUR 166.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T08:29-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR223.91",
      "id": "M2rk5I90Gh7LabRxTDcli9002",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 155,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 155,
              "flight": {
                "carrier": "TP",
                "number": "484"
              },
              "id": "GmhnRKXTa0z0m49w",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lw+viRCHDX0RNWRy",
                  "aircraft": "E90",
                  "arrivalTime": "2016-12-01T12:40+01:00",
                  "departureTime": "2016-12-01T09:05+00:00",
                  "origin": "LIS",
                  "destination": "NCE",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 155,
                  "operatingDisclosure": "OPERATED BY PORTUGALIA - COMPANHIA PORTUGUESA",
                  "mileage": 912,
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
              "id": "AQeTZjrOfVYwVrnofgPMpyizzH+UoqfSt3j7qDuz3lYY",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "NCE",
              "basisCode": "H14BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AQeTZjrOfVYwVrnofgPMpyizzH+UoqfSt3j7qDuz3lYY",
              "segmentId": "GmhnRKXTa0z0m49w"
            }
          ],
          "baseFareTotal": "EUR166.00",
          "saleFareTotal": "EUR166.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR223.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP NCE 186.29H14BSC0A NUC 186.29 END ROE 0.891079 FARE EUR 166.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T04:04-05:00",
          "ptc": "ADT"
        }
      ]
    }
  ]
  }
  }
  '

  lis_fco = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "Mt3KqntrVZno7jvfX0PVzl",
  "data": {
    "kind": "qpxexpress#data",
    "airport": [
      {
        "kind": "qpxexpress#airportData",
        "code": "FCO",
        "city": "ROM",
        "name": "Rome Leonardo da Vinci-Fiumicino"
      },
      {
        "kind": "qpxexpress#airportData",
        "code": "LIS",
        "city": "LIS",
        "name": "Lisbon"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "LIS",
        "name": "Lisbon"
      },
      {
        "kind": "qpxexpress#cityData",
        "code": "ROM",
        "name": "Rome"
      }
    ],
    "aircraft": [
      {
        "kind": "qpxexpress#aircraftData",
        "code": "319",
        "name": "Airbus A319"
      },
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
        "id": "YR_I",
        "name": "AZ YR surcharge"
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
        "code": "AZ",
        "name": "Alitalia Societa Aerea Italiana S.p"
      },
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
      "saleTotal": "EUR199.91",
      "id": "axuvnOmI3WPMZjQNm8n2VA001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 175,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 175,
              "flight": {
                "carrier": "TP",
                "number": "836"
              },
              "id": "GJG6iLP4NOzcWOIN",
              "cabin": "COACH",
              "bookingCode": "V",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L+-ayRe5A71arfLd",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T23:35+01:00",
                  "departureTime": "2016-12-01T19:40+00:00",
                  "origin": "LIS",
                  "destination": "FCO",
                  "originTerminal": "1",
                  "destinationTerminal": "3",
                  "duration": 175,
                  "mileage": 1142,
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
              "id": "A7oDt7CiJ0XYqMfYk6DUayGYICINFLu6y0ti8qmkGRbE",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "ROM",
              "basisCode": "V16BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A7oDt7CiJ0XYqMfYk6DUayGYICINFLu6y0ti8qmkGRbE",
              "segmentId": "GJG6iLP4NOzcWOIN"
            }
          ],
          "baseFareTotal": "EUR142.00",
          "saleFareTotal": "EUR142.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR199.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP ROM 159.35V16BSC0A NUC 159.35 END ROE 0.891079 FARE EUR 142.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T14:39-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR277.91",
      "id": "axuvnOmI3WPMZjQNm8n2VA002",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 175,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 175,
              "flight": {
                "carrier": "TP",
                "number": "844"
              },
              "id": "GKazgkTF-Lz1CplE",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L6rlmlFZ7a680uZp",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T10:45+01:00",
                  "departureTime": "2016-12-01T06:50+00:00",
                  "origin": "LIS",
                  "destination": "FCO",
                  "originTerminal": "1",
                  "destinationTerminal": "3",
                  "duration": 175,
                  "mileage": 1142,
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
              "id": "ASOjbiXV/cQjcvHMNkAvDnPv7I8qWa2OoD+s60i6/seA",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "ROM",
              "basisCode": "H16BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "ASOjbiXV/cQjcvHMNkAvDnPv7I8qWa2OoD+s60i6/seA",
              "segmentId": "GKazgkTF-Lz1CplE"
            }
          ],
          "baseFareTotal": "EUR220.00",
          "saleFareTotal": "EUR220.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR277.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP ROM 246.89H16BSC0A NUC 246.89 END ROE 0.891079 FARE EUR 220.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T01:49-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR318.91",
      "id": "axuvnOmI3WPMZjQNm8n2VA003",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 175,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 175,
              "flight": {
                "carrier": "TP",
                "number": "842"
              },
              "id": "GRofLcQ9kNqGbsZG",
              "cabin": "COACH",
              "bookingCode": "S",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L-jBMIittPBa5F4n",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T18:40+01:00",
                  "departureTime": "2016-12-01T14:45+00:00",
                  "origin": "LIS",
                  "destination": "FCO",
                  "originTerminal": "1",
                  "destinationTerminal": "3",
                  "duration": 175,
                  "mileage": 1142,
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
              "id": "AtSmjaVUT1G5oBrGrQqKUiFvkfIlbqzOE9GylLfQjGDo",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "ROM",
              "basisCode": "S16BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AtSmjaVUT1G5oBrGrQqKUiFvkfIlbqzOE9GylLfQjGDo",
              "segmentId": "GRofLcQ9kNqGbsZG"
            }
          ],
          "baseFareTotal": "EUR261.00",
          "saleFareTotal": "EUR261.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR318.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP ROM 292.90S16BSC0A NUC 292.90 END ROE 0.891079 FARE EUR 261.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T09:44-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR322.91",
      "id": "axuvnOmI3WPMZjQNm8n2VA004",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 175,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 175,
              "flight": {
                "carrier": "AZ",
                "number": "7535"
              },
              "id": "G2cNdpP6TjC2zh4B",
              "cabin": "COACH",
              "bookingCode": "V",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L8BNEA9Mc4mByNYh",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T10:45+01:00",
                  "departureTime": "2016-12-01T06:50+00:00",
                  "origin": "LIS",
                  "destination": "FCO",
                  "originTerminal": "1",
                  "destinationTerminal": "3",
                  "duration": 175,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1142,
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
              "id": "Af1z2Oj7WtJVSYekh8SliVSYI1h/RiVb/vyu0fuhc+FQ",
              "carrier": "AZ",
              "origin": "LIS",
              "destination": "ROM",
              "basisCode": "VSXOWPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Af1z2Oj7WtJVSYekh8SliVSYI1h/RiVb/vyu0fuhc+FQ",
              "segmentId": "G2cNdpP6TjC2zh4B"
            }
          ],
          "baseFareTotal": "EUR265.00",
          "saleFareTotal": "EUR265.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR322.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS AZ ROM 297.39VSXOWPT NUC 297.39 END ROE 0.891079 FARE EUR 265.00 XT 4.03PT 10.88YP 43.00YR",
          "latestTicketingTime": "2016-12-01T01:49-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR322.91",
      "id": "axuvnOmI3WPMZjQNm8n2VA005",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 175,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 175,
              "flight": {
                "carrier": "AZ",
                "number": "7763"
              },
              "id": "GwktZxH7oVK1WDUg",
              "cabin": "COACH",
              "bookingCode": "V",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lns64X9OgEvsHEeM",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T23:35+01:00",
                  "departureTime": "2016-12-01T19:40+00:00",
                  "origin": "LIS",
                  "destination": "FCO",
                  "originTerminal": "1",
                  "destinationTerminal": "3",
                  "duration": 175,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1142,
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
              "id": "Af1z2Oj7WtJVSYekh8SliVSYI1h/RiVb/vyu0fuhc+FQ",
              "carrier": "AZ",
              "origin": "LIS",
              "destination": "ROM",
              "basisCode": "VSXOWPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Af1z2Oj7WtJVSYekh8SliVSYI1h/RiVb/vyu0fuhc+FQ",
              "segmentId": "GwktZxH7oVK1WDUg"
            }
          ],
          "baseFareTotal": "EUR265.00",
          "saleFareTotal": "EUR265.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR322.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS AZ ROM 297.39VSXOWPT NUC 297.39 END ROE 0.891079 FARE EUR 265.00 XT 4.03PT 10.88YP 43.00YR",
          "latestTicketingTime": "2016-12-01T14:39-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR360.91",
      "id": "axuvnOmI3WPMZjQNm8n2VA006",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 175,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 175,
              "flight": {
                "carrier": "TP",
                "number": "846"
              },
              "id": "GpPhGqWfukw8-WDc",
              "cabin": "COACH",
              "bookingCode": "M",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LmR5ppv0HG5dZSgV",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T13:25+01:00",
                  "departureTime": "2016-12-01T09:30+00:00",
                  "origin": "LIS",
                  "destination": "FCO",
                  "originTerminal": "1",
                  "destinationTerminal": "3",
                  "duration": 175,
                  "mileage": 1142,
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
              "id": "AZS6/MjBBQzMGEyVVq0b89NBRakcGf3KXRdybFOLE+tM",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "ROM",
              "basisCode": "M16BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AZS6/MjBBQzMGEyVVq0b89NBRakcGf3KXRdybFOLE+tM",
              "segmentId": "GpPhGqWfukw8-WDc"
            }
          ],
          "baseFareTotal": "EUR303.00",
          "saleFareTotal": "EUR303.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR360.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP ROM 340.03M16BSC0A NUC 340.03 END ROE 0.891079 FARE EUR 303.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T04:29-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR393.91",
      "id": "axuvnOmI3WPMZjQNm8n2VA007",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 175,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 175,
              "flight": {
                "carrier": "AZ",
                "number": "7767"
              },
              "id": "GaFanVREUMxq1+AX",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L-wID0+KqTyK1rq-",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T18:40+01:00",
                  "departureTime": "2016-12-01T14:45+00:00",
                  "origin": "LIS",
                  "destination": "FCO",
                  "originTerminal": "1",
                  "destinationTerminal": "3",
                  "duration": 175,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1142,
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
              "id": "AilLg6CyCEo7DQ7+Tsz2La8XoWLcx2oloSxxGzwZAFtw",
              "carrier": "AZ",
              "origin": "LIS",
              "destination": "ROM",
              "basisCode": "HPXOWPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AilLg6CyCEo7DQ7+Tsz2La8XoWLcx2oloSxxGzwZAFtw",
              "segmentId": "GaFanVREUMxq1+AX"
            }
          ],
          "baseFareTotal": "EUR336.00",
          "saleFareTotal": "EUR336.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR393.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS AZ ROM 377.07HPXOWPT NUC 377.07 END ROE 0.891079 FARE EUR 336.00 XT 4.03PT 10.88YP 43.00YR",
          "latestTicketingTime": "2016-12-01T09:44-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR642.91",
      "id": "axuvnOmI3WPMZjQNm8n2VA008",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 175,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 175,
              "flight": {
                "carrier": "AZ",
                "number": "7531"
              },
              "id": "GyhD+hJYVb66OcF6",
              "cabin": "BUSINESS",
              "bookingCode": "D",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LLfGJASkJkC2+2Nb",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T13:25+01:00",
                  "departureTime": "2016-12-01T09:30+00:00",
                  "origin": "LIS",
                  "destination": "FCO",
                  "originTerminal": "1",
                  "destinationTerminal": "3",
                  "duration": 175,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1142,
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
              "id": "AQ6zA7SdA7NwLD6pLxvcqeKl+LBlVukaMJquQEzAINFw",
              "carrier": "AZ",
              "origin": "LIS",
              "destination": "ROM",
              "basisCode": "DOWPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AQ6zA7SdA7NwLD6pLxvcqeKl+LBlVukaMJquQEzAINFw",
              "segmentId": "GyhD+hJYVb66OcF6"
            }
          ],
          "baseFareTotal": "EUR578.00",
          "saleFareTotal": "EUR578.00",
          "saleTaxTotal": "EUR64.91",
          "saleTotal": "EUR642.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR50.00"
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
          "fareCalculation": "LIS AZ ROM 648.65DOWPT NUC 648.65 END ROE 0.891079 FARE EUR 578.00 XT 4.03PT 10.88YP 50.00YR",
          "latestTicketingTime": "2016-12-01T04:29-05:00",
          "ptc": "ADT",
          "refundable": true
        }
      ]
    }
  ]
  }
  }
  '

  lis_zrh = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "2Ci2mTDnrDDIG8kgH0PVzt",
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
        "code": "ZRH",
        "city": "ZRH",
        "name": "Zurich Airport"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "LIS",
        "name": "Lisbon"
      },
      {
        "kind": "qpxexpress#cityData",
        "code": "ZRH",
        "name": "Zurich"
      }
    ],
    "aircraft": [
      {
        "kind": "qpxexpress#aircraftData",
        "code": "319",
        "name": "Airbus A319"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "320",
        "name": "Airbus A320"
      },
      {
        "kind": "qpxexpress#aircraftData",
        "code": "32B",
        "name": "Airbus A321 (Sharklets)"
      }
    ],
    "tax": [
      {
        "kind": "qpxexpress#taxData",
        "id": "YQ_F",
        "name": "VY YQ surcharge"
      },
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
        "id": "YR_I",
        "name": "LX YR surcharge"
      },
      {
        "kind": "qpxexpress#taxData",
        "id": "YQ_I",
        "name": "IB YQ surcharge"
      }
    ],
    "carrier": [
      {
        "kind": "qpxexpress#carrierData",
        "code": "BA",
        "name": "British Airways"
      },
      {
        "kind": "qpxexpress#carrierData",
        "code": "IB",
        "name": "Iberia Lineas Aereas de Espana S.A."
      },
      {
        "kind": "qpxexpress#carrierData",
        "code": "LX",
        "name": "SWISS"
      },
      {
        "kind": "qpxexpress#carrierData",
        "code": "TP",
        "name": "TAP Portugal"
      },
      {
        "kind": "qpxexpress#carrierData",
        "code": "VY",
        "name": "Vueling Airlines S.A."
      }
    ]
  },
  "tripOption": [
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR80.91",
      "id": "CO7pLpkBRN5MxelCksER7F002",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 160,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 160,
              "flight": {
                "carrier": "IB",
                "number": "5337"
              },
              "id": "GYRUBlXiHFUM+UNw",
              "cabin": "COACH",
              "bookingCode": "O",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LZNaDD4GSQ6-+Z9H",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T20:20+01:00",
                  "departureTime": "2016-12-01T16:40+00:00",
                  "origin": "LIS",
                  "destination": "ZRH",
                  "originTerminal": "1",
                  "duration": 160,
                  "operatingDisclosure": "OPERATED BY VUELING AIRLINES",
                  "mileage": 1070,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "AaRLoJMc6dzI92UxEQtC74Fbh1Xw5Tyl5FRiTiOWTfBWc6E",
              "carrier": "IB",
              "origin": "LIS",
              "destination": "ZRH",
              "basisCode": "OOWNVY"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AaRLoJMc6dzI92UxEQtC74Fbh1Xw5Tyl5FRiTiOWTfBWc6E",
              "segmentId": "GYRUBlXiHFUM+UNw"
            }
          ],
          "baseFareTotal": "EUR56.00",
          "saleFareTotal": "EUR56.00",
          "saleTaxTotal": "EUR24.91",
          "saleTotal": "EUR80.91",
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
              "salePrice": "EUR10.00"
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
          "fareCalculation": "LIS IB ZRH 62.84OOWNVY NUC 62.84 END ROE 0.891079 FARE EUR 56.00 XT 4.03PT 10.88YP 10.00YQ",
          "latestTicketingTime": "2016-11-27T05:21-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR80.91",
      "id": "CO7pLpkBRN5MxelCksER7F001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 160,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 160,
              "flight": {
                "carrier": "BA",
                "number": "8099"
              },
              "id": "GQJlzFIHdl2nbVgH",
              "cabin": "COACH",
              "bookingCode": "O",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LNagJ8KkgAhYwNSt",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T20:20+01:00",
                  "departureTime": "2016-12-01T16:40+00:00",
                  "origin": "LIS",
                  "destination": "ZRH",
                  "originTerminal": "1",
                  "duration": 160,
                  "operatingDisclosure": "OPERATED BY VUELING AIRLINES",
                  "mileage": 1070,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "Afxu71QKT5OAnrN8cwWm/Lz8Zs0p19S/hSyM/7wnOWLDfu/",
              "carrier": "BA",
              "origin": "LIS",
              "destination": "ZRH",
              "basisCode": "OOWVY"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Afxu71QKT5OAnrN8cwWm/Lz8Zs0p19S/hSyM/7wnOWLDfu/",
              "segmentId": "GQJlzFIHdl2nbVgH"
            }
          ],
          "baseFareTotal": "EUR66.00",
          "saleFareTotal": "EUR66.00",
          "saleTaxTotal": "EUR14.91",
          "saleTotal": "EUR80.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "PT_001",
              "chargeType": "GOVERNMENT",
              "code": "PT",
              "country": "PT",
              "salePrice": "EUR4.03"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YP_003",
              "chargeType": "GOVERNMENT",
              "code": "YP",
              "country": "PT",
              "salePrice": "EUR10.88"
            }
          ],
          "fareCalculation": "LIS BA ZRH 74.06OOWVY NUC 74.06 END ROE 0.891079 FARE EUR 66.00 XT 4.03PT 10.88YP",
          "latestTicketingTime": "2016-11-26T23:59-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR81.91",
      "id": "CO7pLpkBRN5MxelCksER7F003",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 170,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 170,
              "flight": {
                "carrier": "TP",
                "number": "928"
              },
              "id": "GvjQVxGl6dQCjB8S",
              "cabin": "COACH",
              "bookingCode": "U",
              "bookingCodeCount": 6,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LvHFW64c4t27Rj9R",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T22:40+01:00",
                  "departureTime": "2016-12-01T18:50+00:00",
                  "origin": "LIS",
                  "destination": "ZRH",
                  "originTerminal": "1",
                  "duration": 170,
                  "mileage": 1070,
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
              "id": "ALsg58C2Q8wLkzzdv2J5wZB/gbipeSQe+Dp00Y+O9qbaoz/",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "ZRH",
              "basisCode": "U23BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "ALsg58C2Q8wLkzzdv2J5wZB/gbipeSQe+Dp00Y+O9qbaoz/",
              "segmentId": "GvjQVxGl6dQCjB8S"
            }
          ],
          "baseFareTotal": "EUR52.00",
          "saleFareTotal": "EUR52.00",
          "saleTaxTotal": "EUR29.91",
          "saleTotal": "EUR81.91",
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
              "salePrice": "EUR15.00"
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
          "fareCalculation": "LIS TP ZRH 58.35U23BSC0A NUC 58.35 END ROE 0.891079 FARE EUR 52.00 XT 4.03PT 10.88YP 15.00YQ",
          "latestTicketingTime": "2016-12-01T13:49-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR90.91",
      "id": "CO7pLpkBRN5MxelCksER7F004",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 160,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 160,
              "flight": {
                "carrier": "VY",
                "number": "7983"
              },
              "id": "GHqS+mtxq-vAdPCx",
              "cabin": "COACH",
              "bookingCode": "W",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LnldUcz+MWQwyRXe",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T20:20+01:00",
                  "departureTime": "2016-12-01T16:40+00:00",
                  "origin": "LIS",
                  "destination": "ZRH",
                  "originTerminal": "1",
                  "duration": 160,
                  "mileage": 1070,
                  "meal": "Food and Beverages for Purchase"
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
              "id": "AJ2I8WR0pQD3Ed7ZrJUigrFZYMRFYkvKIEWzXItB/j42QuE",
              "carrier": "VY",
              "origin": "LIS",
              "destination": "ZRH",
              "basisCode": "WOWVY"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AJ2I8WR0pQD3Ed7ZrJUigrFZYMRFYkvKIEWzXItB/j42QuE",
              "segmentId": "GHqS+mtxq-vAdPCx"
            }
          ],
          "baseFareTotal": "EUR66.00",
          "saleFareTotal": "EUR66.00",
          "saleTaxTotal": "EUR24.91",
          "saleTotal": "EUR90.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YQ_F",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YQ",
              "salePrice": "EUR10.00"
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
          "fareCalculation": "LIS VY ZRH 74.06WOWVY NUC 74.06 END ROE 0.891079 FARE EUR 66.00 XT 4.03PT 10.88YP 10.00YQ",
          "latestTicketingTime": "2016-11-27T05:21-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR191.91",
      "id": "CO7pLpkBRN5MxelCksER7F006",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 170,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 170,
              "flight": {
                "carrier": "LX",
                "number": "4591"
              },
              "id": "G34HpleA9dmlaL28",
              "cabin": "COACH",
              "bookingCode": "W",
              "bookingCodeCount": 6,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LD8SD-7cgXKMxmYj",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T22:40+01:00",
                  "departureTime": "2016-12-01T18:50+00:00",
                  "origin": "LIS",
                  "destination": "ZRH",
                  "originTerminal": "1",
                  "duration": 170,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1070,
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
              "id": "AXFHOURsM+EVmjJ7qn1P/rv1U+gOLqO98Q086SGZ8Tx8to/",
              "carrier": "LX",
              "origin": "LIS",
              "destination": "ZRH",
              "basisCode": "WCLSOW"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AXFHOURsM+EVmjJ7qn1P/rv1U+gOLqO98Q086SGZ8Tx8to/",
              "segmentId": "G34HpleA9dmlaL28"
            }
          ],
          "baseFareTotal": "EUR140.00",
          "saleFareTotal": "EUR140.00",
          "saleTaxTotal": "EUR51.91",
          "saleTotal": "EUR191.91",
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
              "salePrice": "EUR21.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR16.00"
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
          "fareCalculation": "LIS LX ZRH 157.11WCLSOW NUC 157.11 END ROE 0.891079 FARE EUR 140.00 XT 4.03PT 10.88YP 21.00YQ 16.00YR",
          "latestTicketingTime": "2016-12-01T13:49-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR191.91",
      "id": "CO7pLpkBRN5MxelCksER7F005",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 165,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 165,
              "flight": {
                "carrier": "LX",
                "number": "2085"
              },
              "id": "GL7gEEroXFUYW2MM",
              "cabin": "COACH",
              "bookingCode": "W",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "L75n4hsv4h6lv2N2",
                  "aircraft": "32B",
                  "arrivalTime": "2016-12-01T18:10+01:00",
                  "departureTime": "2016-12-01T14:25+00:00",
                  "origin": "LIS",
                  "destination": "ZRH",
                  "originTerminal": "1",
                  "duration": 165,
                  "mileage": 1070,
                  "meal": "Snack or Brunch"
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
              "id": "AXFHOURsM+EVmjJ7qn1P/rv1U+gOLqO98Q086SGZ8Tx8to/",
              "carrier": "LX",
              "origin": "LIS",
              "destination": "ZRH",
              "basisCode": "WCLSOW"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AXFHOURsM+EVmjJ7qn1P/rv1U+gOLqO98Q086SGZ8Tx8to/",
              "segmentId": "GL7gEEroXFUYW2MM"
            }
          ],
          "baseFareTotal": "EUR140.00",
          "saleFareTotal": "EUR140.00",
          "saleTaxTotal": "EUR51.91",
          "saleTotal": "EUR191.91",
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
              "salePrice": "EUR21.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR16.00"
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
          "fareCalculation": "LIS LX ZRH 157.11WCLSOW NUC 157.11 END ROE 0.891079 FARE EUR 140.00 XT 4.03PT 10.88YP 21.00YQ 16.00YR",
          "latestTicketingTime": "2016-12-01T09:24-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR201.91",
      "id": "CO7pLpkBRN5MxelCksER7F007",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 170,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 170,
              "flight": {
                "carrier": "TP",
                "number": "926"
              },
              "id": "GnLsWhQY3SM2zrmK",
              "cabin": "COACH",
              "bookingCode": "Q",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Ls9MpNkuRlCvxRwB",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T17:15+01:00",
                  "departureTime": "2016-12-01T13:25+00:00",
                  "origin": "LIS",
                  "destination": "ZRH",
                  "originTerminal": "1",
                  "duration": 170,
                  "mileage": 1070,
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
              "id": "ARz5quc6mCpbq9XrVw3kjGS8dKXTd6axfPMe/SKxQfizsKE",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "ZRH",
              "basisCode": "Q23BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "ARz5quc6mCpbq9XrVw3kjGS8dKXTd6axfPMe/SKxQfizsKE",
              "segmentId": "GnLsWhQY3SM2zrmK"
            }
          ],
          "baseFareTotal": "EUR144.00",
          "saleFareTotal": "EUR144.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR201.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP ZRH 161.60Q23BSC0A NUC 161.60 END ROE 0.891079 FARE EUR 144.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T08:24-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR225.91",
      "id": "CO7pLpkBRN5MxelCksER7F008",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 165,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 165,
              "flight": {
                "carrier": "TP",
                "number": "6763"
              },
              "id": "GJwn9p3xY7hwir5K",
              "cabin": "COACH",
              "bookingCode": "A",
              "bookingCodeCount": 6,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lat7ukIAEbhE0CYO",
                  "aircraft": "32B",
                  "arrivalTime": "2016-12-01T18:10+01:00",
                  "departureTime": "2016-12-01T14:25+00:00",
                  "origin": "LIS",
                  "destination": "ZRH",
                  "originTerminal": "1",
                  "duration": 165,
                  "operatingDisclosure": "OPERATED BY SWISS INTERNATIONAL AIRLINES",
                  "mileage": 1070
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
              "id": "Ak/T5S4UFD3UgbjvRYyvJvL/q2oVmAiJum1nrgArucE+LVo",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "ZRH",
              "basisCode": "A23CLC2A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Ak/T5S4UFD3UgbjvRYyvJvL/q2oVmAiJum1nrgArucE+LVo",
              "segmentId": "GJwn9p3xY7hwir5K"
            }
          ],
          "baseFareTotal": "EUR181.00",
          "saleFareTotal": "EUR181.00",
          "saleTaxTotal": "EUR44.91",
          "saleTotal": "EUR225.91",
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
              "salePrice": "EUR30.00"
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
          "fareCalculation": "LIS TP ZRH 203.12A23CLC2A NUC 203.12 END ROE 0.891079 FARE EUR 181.00 XT 4.03PT 10.88YP 30.00YQ",
          "latestTicketingTime": "2016-12-01T09:24-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR294.91",
      "id": "CO7pLpkBRN5MxelCksER7F009",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 170,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 170,
              "flight": {
                "carrier": "TP",
                "number": "932"
              },
              "id": "GDAeQK1SSuItDmkB",
              "cabin": "BUSINESS",
              "bookingCode": "Z",
              "bookingCodeCount": 5,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LrU9ymfziVlcI79+",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T12:40+01:00",
                  "departureTime": "2016-12-01T08:50+00:00",
                  "origin": "LIS",
                  "destination": "ZRH",
                  "originTerminal": "1",
                  "duration": 170,
                  "mileage": 1070,
                  "meal": "Breakfast"
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
              "id": "AQgXd78aGDueq2xC6kHhImhgjL9xQIPmwDxXxlIATzBbfHU",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "ZRH",
              "basisCode": "Z23EXE0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AQgXd78aGDueq2xC6kHhImhgjL9xQIPmwDxXxlIATzBbfHU",
              "segmentId": "GDAeQK1SSuItDmkB"
            }
          ],
          "baseFareTotal": "EUR230.00",
          "saleFareTotal": "EUR230.00",
          "saleTaxTotal": "EUR64.91",
          "saleTotal": "EUR294.91",
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
              "salePrice": "EUR50.00"
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
          "fareCalculation": "LIS TP ZRH 258.11Z23EXE0A NUC 258.11 END ROE 0.891079 FARE EUR 230.00 XT 4.03PT 10.88YP 50.00YQ",
          "latestTicketingTime": "2016-12-01T03:49-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR306.91",
      "id": "CO7pLpkBRN5MxelCksER7F00A",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 170,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 170,
              "flight": {
                "carrier": "LX",
                "number": "4583"
              },
              "id": "G52wuunDFPl5P69w",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 6,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LpsRasC2ku787l-o",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T17:15+01:00",
                  "departureTime": "2016-12-01T13:25+00:00",
                  "origin": "LIS",
                  "destination": "ZRH",
                  "originTerminal": "1",
                  "duration": 170,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1070,
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
              "id": "A3irwAeCv3yOb1F9wE8VgpLpaT6LAxq5CuK0n18o+GstFME",
              "carrier": "LX",
              "origin": "LIS",
              "destination": "ZRH",
              "basisCode": "HCLSOW"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A3irwAeCv3yOb1F9wE8VgpLpaT6LAxq5CuK0n18o+GstFME",
              "segmentId": "G52wuunDFPl5P69w"
            }
          ],
          "baseFareTotal": "EUR236.00",
          "saleFareTotal": "EUR236.00",
          "saleTaxTotal": "EUR70.91",
          "saleTotal": "EUR306.91",
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
              "salePrice": "EUR40.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR16.00"
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
          "fareCalculation": "LIS LX ZRH 264.84HCLSOW NUC 264.84 END ROE 0.891079 FARE EUR 236.00 XT 4.03PT 10.88YP 40.00YQ 16.00YR",
          "latestTicketingTime": "2016-12-01T08:24-05:00",
          "ptc": "ADT"
        }
      ]
    }
  ]
  }
  }
  '

  lis_vie = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "anXTVKrNre2jhR9qJ0PVzu",
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
        "code": "VIE",
        "city": "VIE",
        "name": "Vienna International"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "LIS",
        "name": "Lisbon"
      },
      {
        "kind": "qpxexpress#cityData",
        "code": "VIE",
        "name": "Vienna"
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
        "id": "YR_I",
        "name": "OS YR surcharge"
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
        "code": "OS",
        "name": "Austrian"
      },
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
      "saleTotal": "EUR472.91",
      "id": "CFxMA9wClT0LM1p74VjcnS001",
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
                "number": "1270"
              },
              "id": "GBtx3tWaYUc4CDUS",
              "cabin": "COACH",
              "bookingCode": "B",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lm8RHTuXuE+VVcDe",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T14:15+01:00",
                  "departureTime": "2016-12-01T09:45+00:00",
                  "origin": "LIS",
                  "destination": "VIE",
                  "originTerminal": "1",
                  "duration": 210,
                  "mileage": 1432,
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
              "id": "AOOIA8m7jfr+fb8XLhPn4ltHK1zP+gGz+6cEEHt9INC/",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "VIE",
              "basisCode": "B10BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AOOIA8m7jfr+fb8XLhPn4ltHK1zP+gGz+6cEEHt9INC/",
              "segmentId": "GBtx3tWaYUc4CDUS"
            }
          ],
          "baseFareTotal": "EUR415.00",
          "saleFareTotal": "EUR415.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR472.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP VIE 465.72B10BSC0A NUC 465.72 END ROE 0.891079 FARE EUR 415.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T04:44-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR670.91",
      "id": "CFxMA9wClT0LM1p74VjcnS002",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 210,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 210,
              "flight": {
                "carrier": "OS",
                "number": "8154"
              },
              "id": "GOP1ydP4YzkEXISg",
              "cabin": "COACH",
              "bookingCode": "Y",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LTCCreOFqh4E-Pjf",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T14:15+01:00",
                  "departureTime": "2016-12-01T09:45+00:00",
                  "origin": "LIS",
                  "destination": "VIE",
                  "originTerminal": "1",
                  "duration": 210,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1432,
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
              "id": "A02s/zLIBQvwO9kOosSRBUp+vMKVltZlf+TFUwqXwEsk",
              "carrier": "OS",
              "origin": "LIS",
              "destination": "VIE",
              "basisCode": "Y10CLS9"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A02s/zLIBQvwO9kOosSRBUp+vMKVltZlf+TFUwqXwEsk",
              "segmentId": "GOP1ydP4YzkEXISg"
            }
          ],
          "baseFareTotal": "EUR600.00",
          "saleFareTotal": "EUR600.00",
          "saleTaxTotal": "EUR70.91",
          "saleTotal": "EUR670.91",
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
              "salePrice": "EUR40.00"
            },
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR16.00"
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
          "fareCalculation": "LIS OS VIE 673.34Y10CLS9 NUC 673.34 END ROE 0.891079 FARE EUR 600.00 XT 4.03PT 10.88YP 40.00YQ 16.00YR",
          "latestTicketingTime": "2016-11-29T09:45-05:00",
          "ptc": "ADT"
        }
      ]
    }
  ]
  }
  }
  '

  lis_mxp = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "haiX5o1I7i5HlTmNw0PVzu",
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
        "code": "MXP",
        "city": "MIL",
        "name": "Milan Malpensa"
      }
    ],
    "city": [
      {
        "kind": "qpxexpress#cityData",
        "code": "LIS",
        "name": "Lisbon"
      },
      {
        "kind": "qpxexpress#cityData",
        "code": "MIL",
        "name": "Milan"
      }
    ],
    "aircraft": [
      {
        "kind": "qpxexpress#aircraftData",
        "code": "319",
        "name": "Airbus A319"
      },
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
        "id": "YR_I",
        "name": "AZ YR surcharge"
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
        "code": "AZ",
        "name": "Alitalia Societa Aerea Italiana S.p"
      },
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
      "id": "Py2XqQtDTdUPfpFXAVRve3001",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 160,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 160,
              "flight": {
                "carrier": "TP",
                "number": "814"
              },
              "id": "GWgNLHmX99egeUIX",
              "cabin": "COACH",
              "bookingCode": "A",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lw599HQRgHB4BDYx",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T23:30+01:00",
                  "departureTime": "2016-12-01T19:50+00:00",
                  "origin": "LIS",
                  "destination": "MXP",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 160,
                  "mileage": 1025,
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
              "id": "AZe5u5TLmIjFYS8E8EyeYuipvneQKchOc5zHb6NRz6pw",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "MIL",
              "basisCode": "A16BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AZe5u5TLmIjFYS8E8EyeYuipvneQKchOc5zHb6NRz6pw",
              "segmentId": "GWgNLHmX99egeUIX"
            }
          ],
          "baseFareTotal": "EUR92.00",
          "saleFareTotal": "EUR92.00",
          "saleTaxTotal": "EUR44.91",
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
              "salePrice": "EUR30.00"
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
          "fareCalculation": "LIS TP MIL 103.24A16BSC0A NUC 103.24 END ROE 0.891079 FARE EUR 92.00 XT 4.03PT 10.88YP 30.00YQ",
          "latestTicketingTime": "2016-12-01T14:49-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR198.91",
      "id": "Py2XqQtDTdUPfpFXAVRve3002",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 160,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 160,
              "flight": {
                "carrier": "TP",
                "number": "804"
              },
              "id": "G+-uTD7g4nUGYmIf",
              "cabin": "COACH",
              "bookingCode": "V",
              "bookingCodeCount": 9,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LydUvvmhrAXad7ry",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T18:20+01:00",
                  "departureTime": "2016-12-01T14:40+00:00",
                  "origin": "LIS",
                  "destination": "MXP",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 160,
                  "mileage": 1025,
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
              "id": "Atdp33TdjcsMgtx8sSYKkeKQ05Tmo7i5EIbyseljU64o",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "MIL",
              "basisCode": "V16BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "Atdp33TdjcsMgtx8sSYKkeKQ05Tmo7i5EIbyseljU64o",
              "segmentId": "G+-uTD7g4nUGYmIf"
            }
          ],
          "baseFareTotal": "EUR141.00",
          "saleFareTotal": "EUR141.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR198.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP MIL 158.23V16BSC0A NUC 158.23 END ROE 0.891079 FARE EUR 141.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T09:39-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR219.91",
      "id": "Py2XqQtDTdUPfpFXAVRve3003",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 160,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 160,
              "flight": {
                "carrier": "AZ",
                "number": "7539"
              },
              "id": "GwzvV0vnhnJqm+fH",
              "cabin": "COACH",
              "bookingCode": "Q",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lgmgp9teOw5+jaNp",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T23:30+01:00",
                  "departureTime": "2016-12-01T19:50+00:00",
                  "origin": "LIS",
                  "destination": "MXP",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 160,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1025,
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
              "id": "A9+B3Wl6RrP1hQ5hFdR72YNGpD5chvFH68BPf5yxG+FY",
              "carrier": "AZ",
              "origin": "LIS",
              "destination": "MIL",
              "basisCode": "QABOWPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "A9+B3Wl6RrP1hQ5hFdR72YNGpD5chvFH68BPf5yxG+FY",
              "segmentId": "GwzvV0vnhnJqm+fH"
            }
          ],
          "baseFareTotal": "EUR162.00",
          "saleFareTotal": "EUR162.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR219.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS AZ MIL 181.80QABOWPT NUC 181.80 END ROE 0.891079 FARE EUR 162.00 XT 4.03PT 10.88YP 43.00YR",
          "latestTicketingTime": "2016-12-01T14:49-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR392.91",
      "id": "Py2XqQtDTdUPfpFXAVRve3004",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 160,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 160,
              "flight": {
                "carrier": "TP",
                "number": "808"
              },
              "id": "GWXrlxtLxevDmOPN",
              "cabin": "COACH",
              "bookingCode": "B",
              "bookingCodeCount": 1,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "Lkab3YlEP8lW+JoK",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T11:35+01:00",
                  "departureTime": "2016-12-01T07:55+00:00",
                  "origin": "LIS",
                  "destination": "MXP",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 160,
                  "mileage": 1025,
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
              "id": "AZ8B2U7ok9/OxR784K7sF+XcBBuK8/gObr0HVTpMbZ46",
              "carrier": "TP",
              "origin": "LIS",
              "destination": "MIL",
              "basisCode": "B16BSC0A"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AZ8B2U7ok9/OxR784K7sF+XcBBuK8/gObr0HVTpMbZ46",
              "segmentId": "GWXrlxtLxevDmOPN"
            }
          ],
          "baseFareTotal": "EUR335.00",
          "saleFareTotal": "EUR335.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR392.91",
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
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS TP MIL 375.94B16BSC0A NUC 375.94 END ROE 0.891079 FARE EUR 335.00 XT 4.03PT 10.88YP 43.00YQ",
          "latestTicketingTime": "2016-12-01T02:54-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR393.91",
      "id": "Py2XqQtDTdUPfpFXAVRve3005",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 160,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 160,
              "flight": {
                "carrier": "AZ",
                "number": "7751"
              },
              "id": "GuXPc4FEailFJk4c",
              "cabin": "COACH",
              "bookingCode": "H",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LGFLm-JMT8FhvRu7",
                  "aircraft": "320",
                  "arrivalTime": "2016-12-01T18:20+01:00",
                  "departureTime": "2016-12-01T14:40+00:00",
                  "origin": "LIS",
                  "destination": "MXP",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 160,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1025,
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
              "id": "AXblolqiOOYn1SVlV0a/2ajbO6mMakbMKLwlkRveqAdY",
              "carrier": "AZ",
              "origin": "LIS",
              "destination": "MIL",
              "basisCode": "HPXOWPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AXblolqiOOYn1SVlV0a/2ajbO6mMakbMKLwlkRveqAdY",
              "segmentId": "GuXPc4FEailFJk4c"
            }
          ],
          "baseFareTotal": "EUR336.00",
          "saleFareTotal": "EUR336.00",
          "saleTaxTotal": "EUR57.91",
          "saleTotal": "EUR393.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR43.00"
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
          "fareCalculation": "LIS AZ MIL 377.07HPXOWPT NUC 377.07 END ROE 0.891079 FARE EUR 336.00 XT 4.03PT 10.88YP 43.00YR",
          "latestTicketingTime": "2016-12-01T09:39-05:00",
          "ptc": "ADT"
        }
      ]
    },
    {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "EUR642.91",
      "id": "Py2XqQtDTdUPfpFXAVRve3006",
      "slice": [
        {
          "kind": "qpxexpress#sliceInfo",
          "duration": 160,
          "segment": [
            {
              "kind": "qpxexpress#segmentInfo",
              "duration": 160,
              "flight": {
                "carrier": "AZ",
                "number": "7797"
              },
              "id": "Gb70O2t-NgsF15J4",
              "cabin": "BUSINESS",
              "bookingCode": "D",
              "bookingCodeCount": 4,
              "marriedSegmentGroup": "0",
              "leg": [
                {
                  "kind": "qpxexpress#legInfo",
                  "id": "LdUAuNUW+NrDy2sK",
                  "aircraft": "319",
                  "arrivalTime": "2016-12-01T11:35+01:00",
                  "departureTime": "2016-12-01T07:55+00:00",
                  "origin": "LIS",
                  "destination": "MXP",
                  "originTerminal": "1",
                  "destinationTerminal": "1",
                  "duration": 160,
                  "operatingDisclosure": "OPERATED BY TAP",
                  "mileage": 1025,
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
              "id": "AyPNYrZGCiyb7Mj0QX2uBvOS7nZFtykVSveXpIsHrt7M",
              "carrier": "AZ",
              "origin": "LIS",
              "destination": "MIL",
              "basisCode": "DOWPT"
            }
          ],
          "segmentPricing": [
            {
              "kind": "qpxexpress#segmentPricing",
              "fareId": "AyPNYrZGCiyb7Mj0QX2uBvOS7nZFtykVSveXpIsHrt7M",
              "segmentId": "Gb70O2t-NgsF15J4"
            }
          ],
          "baseFareTotal": "EUR578.00",
          "saleFareTotal": "EUR578.00",
          "saleTaxTotal": "EUR64.91",
          "saleTotal": "EUR642.91",
          "passengers": {
            "kind": "qpxexpress#passengerCounts",
            "adultCount": 1
          },
          "tax": [
            {
              "kind": "qpxexpress#taxInfo",
              "id": "YR_I",
              "chargeType": "CARRIER_SURCHARGE",
              "code": "YR",
              "salePrice": "EUR50.00"
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
          "fareCalculation": "LIS AZ MIL 648.65DOWPT NUC 648.65 END ROE 0.891079 FARE EUR 578.00 XT 4.03PT 10.88YP 50.00YR",
          "latestTicketingTime": "2016-12-01T02:54-05:00",
          "ptc": "ADT",
          "refundable": true
        }
      ]
    }
  ]
  }
  }
  '

  FROM_ORIGIN1 = [lis_txl, lis_lhr, lis_lgw, lis_cdg, lis_ory, lis_bcn, lis_bru, lis_ams, lis_mad, lis_ath, lis_nce, lis_fco, lis_zrh, lis_vie, lis_mxp]


  # FROM ORIGIN2

  prg_txl = '{
  "kind": "qpxExpress#tripsSearch",
  "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "gknvms6Sopw0VWGbc0PVzy",
  "data": {
   "kind": "qpxexpress#data",
   "airport": [
    {
     "kind": "qpxexpress#airportData",
     "code": "PRG",
     "city": "PRG",
     "name": "Prague Ruzyne"
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
     "code": "PRG",
     "name": "Prague"
    }
   ],
   "aircraft": [
    {
     "kind": "qpxexpress#aircraftData",
     "code": "320",
     "name": "Airbus A320"
    },
    {
     "kind": "qpxexpress#aircraftData",
     "code": "DH4",
     "name": "De Havilland-Bombardier Dash-8"
    }
   ],
   "tax": [
    {
     "kind": "qpxexpress#taxData",
     "id": "YQ_F",
     "name": "AB YQ surcharge"
    },
    {
     "kind": "qpxexpress#taxData",
     "id": "CZ_001",
     "name": "Czech Republic Embarkation Tax"
    }
   ],
   "carrier": [
    {
     "kind": "qpxexpress#carrierData",
     "code": "AB",
     "name": "Air Berlin PLC & Co Luftverkehrs KG"
    },
    {
     "kind": "qpxexpress#carrierData",
     "code": "OK",
     "name": "Czech Airlines a.s,. CSA"
    }
   ]
  },
  "tripOption": [
   {
    "kind": "qpxexpress#tripOption",
    "saleTotal": "CZK6608",
    "id": "XMloLKMzcWJQg4kiWZejEA002",
    "slice": [
     {
      "kind": "qpxexpress#sliceInfo",
      "duration": 60,
      "segment": [
       {
        "kind": "qpxexpress#segmentInfo",
        "duration": 60,
        "flight": {
         "carrier": "AB",
         "number": "8243"
        },
        "id": "GF18r6CF-0gHnSlp",
        "cabin": "COACH",
        "bookingCode": "S",
        "bookingCodeCount": 9,
        "marriedSegmentGroup": "0",
        "leg": [
         {
          "kind": "qpxexpress#legInfo",
          "id": "LxTpzb66gFaZq7r6",
          "aircraft": "DH4",
          "arrivalTime": "2016-12-01T11:40+01:00",
          "departureTime": "2016-12-01T10:40+01:00",
          "origin": "PRG",
          "destination": "TXL",
          "originTerminal": "2",
          "duration": 60,
          "mileage": 174,
          "meal": "Food and Beverages for Purchase"
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
        "id": "AroQphHfb6vFNxgvc3BfS8z3zY6KEMDXmA351ct4AeMc",
        "carrier": "AB",
        "origin": "PRG",
        "destination": "BER",
        "basisCode": "SNCOW"
       }
      ],
      "segmentPricing": [
       {
        "kind": "qpxexpress#segmentPricing",
        "fareId": "AroQphHfb6vFNxgvc3BfS8z3zY6KEMDXmA351ct4AeMc",
        "segmentId": "GF18r6CF-0gHnSlp"
       }
      ],
      "baseFareTotal": "CZK4935",
      "saleFareTotal": "CZK4935",
      "saleTaxTotal": "CZK1673",
      "saleTotal": "CZK6608",
      "passengers": {
       "kind": "qpxexpress#passengerCounts",
       "adultCount": 1
      },
      "tax": [
       {
        "kind": "qpxexpress#taxInfo",
        "id": "YQ_F",
        "chargeType": "CARRIER_SURCHARGE",
        "code": "YQ",
        "salePrice": "CZK1082"
       },
       {
        "kind": "qpxexpress#taxInfo",
        "id": "CZ_001",
        "chargeType": "GOVERNMENT",
        "code": "CZ",
        "country": "CZ",
        "salePrice": "CZK591"
       }
      ],
      "fareCalculation": "PRG AB BER Q5.61 M 199.33SNCOW NUC 204.94 END ROE 24.0803 FARE CZK 4935 XT 591CZ 1082YQ",
      "latestTicketingTime": "2016-11-28T06:26-05:00",
      "ptc": "ADT"
     }
    ]
   },
   {
    "kind": "qpxexpress#tripOption",
    "saleTotal": "CZK6608",
    "id": "XMloLKMzcWJQg4kiWZejEA001",
    "slice": [
     {
      "kind": "qpxexpress#sliceInfo",
      "duration": 50,
      "segment": [
       {
        "kind": "qpxexpress#segmentInfo",
        "duration": 50,
        "flight": {
         "carrier": "AB",
         "number": "8241"
        },
        "id": "GudGdMxgVwR0Oi9Y",
        "cabin": "COACH",
        "bookingCode": "S",
        "bookingCodeCount": 9,
        "marriedSegmentGroup": "0",
        "leg": [
         {
          "kind": "qpxexpress#legInfo",
          "id": "LlDIscVJYsxhHl7f",
          "aircraft": "320",
          "arrivalTime": "2016-12-01T07:20+01:00",
          "departureTime": "2016-12-01T06:30+01:00",
          "origin": "PRG",
          "destination": "TXL",
          "originTerminal": "2",
          "duration": 50,
          "mileage": 174,
          "meal": "Food and Beverages for Purchase"
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
        "id": "AroQphHfb6vFNxgvc3BfS8z3zY6KEMDXmA351ct4AeMc",
        "carrier": "AB",
        "origin": "PRG",
        "destination": "BER",
        "basisCode": "SNCOW"
       }
      ],
      "segmentPricing": [
       {
        "kind": "qpxexpress#segmentPricing",
        "fareId": "AroQphHfb6vFNxgvc3BfS8z3zY6KEMDXmA351ct4AeMc",
        "segmentId": "GudGdMxgVwR0Oi9Y"
       }
      ],
      "baseFareTotal": "CZK4935",
      "saleFareTotal": "CZK4935",
      "saleTaxTotal": "CZK1673",
      "saleTotal": "CZK6608",
      "passengers": {
       "kind": "qpxexpress#passengerCounts",
       "adultCount": 1
      },
      "tax": [
       {
        "kind": "qpxexpress#taxInfo",
        "id": "YQ_F",
        "chargeType": "CARRIER_SURCHARGE",
        "code": "YQ",
        "salePrice": "CZK1082"
       },
       {
        "kind": "qpxexpress#taxInfo",
        "id": "CZ_001",
        "chargeType": "GOVERNMENT",
        "code": "CZ",
        "country": "CZ",
        "salePrice": "CZK591"
       }
      ],
      "fareCalculation": "PRG AB BER Q5.61 M 199.33SNCOW NUC 204.94 END ROE 24.0803 FARE CZK 4935 XT 591CZ 1082YQ",
      "latestTicketingTime": "2016-11-28T06:26-05:00",
      "ptc": "ADT"
     }
    ]
   },
   {
    "kind": "qpxexpress#tripOption",
    "saleTotal": "CZK8228",
    "id": "XMloLKMzcWJQg4kiWZejEA003",
    "slice": [
     {
      "kind": "qpxexpress#sliceInfo",
      "duration": 60,
      "segment": [
       {
        "kind": "qpxexpress#segmentInfo",
        "duration": 60,
        "flight": {
         "carrier": "AB",
         "number": "8247"
        },
        "id": "G1nvvdWv420jipjD",
        "cabin": "COACH",
        "bookingCode": "L",
        "bookingCodeCount": 9,
        "marriedSegmentGroup": "0",
        "leg": [
         {
          "kind": "qpxexpress#legInfo",
          "id": "LDj1ng9kMgsLedBd",
          "aircraft": "DH4",
          "arrivalTime": "2016-12-01T20:30+01:00",
          "departureTime": "2016-12-01T19:30+01:00",
          "origin": "PRG",
          "destination": "TXL",
          "originTerminal": "2",
          "duration": 60,
          "mileage": 174,
          "meal": "Food and Beverages for Purchase"
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
        "id": "AUNHxtsiAzVHs3dlUFm5tpZ8ISovPDT8q9MsY66OgVaE",
        "carrier": "AB",
        "origin": "PRG",
        "destination": "BER",
        "basisCode": "LNCOW"
       }
      ],
      "segmentPricing": [
       {
        "kind": "qpxexpress#segmentPricing",
        "fareId": "AUNHxtsiAzVHs3dlUFm5tpZ8ISovPDT8q9MsY66OgVaE",
        "segmentId": "G1nvvdWv420jipjD"
       }
      ],
      "baseFareTotal": "CZK6555",
      "saleFareTotal": "CZK6555",
      "saleTaxTotal": "CZK1673",
      "saleTotal": "CZK8228",
      "passengers": {
       "kind": "qpxexpress#passengerCounts",
       "adultCount": 1
      },
      "tax": [
       {
        "kind": "qpxexpress#taxInfo",
        "id": "YQ_F",
        "chargeType": "CARRIER_SURCHARGE",
        "code": "YQ",
        "salePrice": "CZK1082"
       },
       {
        "kind": "qpxexpress#taxInfo",
        "id": "CZ_001",
        "chargeType": "GOVERNMENT",
        "code": "CZ",
        "country": "CZ",
        "salePrice": "CZK591"
       }
      ],
      "fareCalculation": "PRG AB BER Q5.61 M 266.60LNCOW NUC 272.21 END ROE 24.0803 FARE CZK 6555 XT 591CZ 1082YQ",
      "latestTicketingTime": "2016-11-28T06:26-05:00",
      "ptc": "ADT"
     }
    ]
   },
   {
    "kind": "qpxexpress#tripOption",
    "saleTotal": "CZK11960",
    "id": "XMloLKMzcWJQg4kiWZejEA006",
    "slice": [
     {
      "kind": "qpxexpress#sliceInfo",
      "duration": 60,
      "segment": [
       {
        "kind": "qpxexpress#segmentInfo",
        "duration": 60,
        "flight": {
         "carrier": "OK",
         "number": "4262"
        },
        "id": "GotrYAAIBmJfidE8",
        "cabin": "COACH",
        "bookingCode": "B",
        "bookingCodeCount": 9,
        "marriedSegmentGroup": "0",
        "leg": [
         {
          "kind": "qpxexpress#legInfo",
          "id": "LQPxn+a-Enw4WxVO",
          "aircraft": "DH4",
          "arrivalTime": "2016-12-01T11:40+01:00",
          "departureTime": "2016-12-01T10:40+01:00",
          "origin": "PRG",
          "destination": "TXL",
          "originTerminal": "2",
          "duration": 60,
          "operatingDisclosure": "OPERATED BY AIR BERLIN",
          "mileage": 174
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
        "id": "AIqnvU7qxgoGWlHNr+eLCRmIuCyo3Pb9FDgiUmYgvpwM",
        "carrier": "OK",
        "origin": "PRG",
        "destination": "BER",
        "basisCode": "BECOWOK"
       }
      ],
      "segmentPricing": [
       {
        "kind": "qpxexpress#segmentPricing",
        "fareId": "AIqnvU7qxgoGWlHNr+eLCRmIuCyo3Pb9FDgiUmYgvpwM",
        "segmentId": "GotrYAAIBmJfidE8"
       }
      ],
      "baseFareTotal": "CZK10287",
      "saleFareTotal": "CZK10287",
      "saleTaxTotal": "CZK1673",
      "saleTotal": "CZK11960",
      "passengers": {
       "kind": "qpxexpress#passengerCounts",
       "adultCount": 1
      },
      "tax": [
       {
        "kind": "qpxexpress#taxInfo",
        "id": "CZ_001",
        "chargeType": "GOVERNMENT",
        "code": "CZ",
        "country": "CZ",
        "salePrice": "CZK591"
       },
       {
        "kind": "qpxexpress#taxInfo",
        "id": "YQ_F",
        "chargeType": "CARRIER_SURCHARGE",
        "code": "YQ",
        "salePrice": "CZK1082"
       }
      ],
      "fareCalculation": "PRG OK BER 427.19BECOWOK NUC 427.19 END ROE 24.0803 FARE CZK 10287 XT 591CZ 1082YQ",
      "latestTicketingTime": "2016-11-27T23:59-05:00",
      "ptc": "ADT"
     }
    ]
   },
   {
    "kind": "qpxexpress#tripOption",
    "saleTotal": "CZK11960",
    "id": "XMloLKMzcWJQg4kiWZejEA004",
    "slice": [
     {
      "kind": "qpxexpress#sliceInfo",
      "duration": 50,
      "segment": [
       {
        "kind": "qpxexpress#segmentInfo",
        "duration": 50,
        "flight": {
         "carrier": "OK",
         "number": "4260"
        },
        "id": "Gwl+tVtwWgdVuglQ",
        "cabin": "COACH",
        "bookingCode": "B",
        "bookingCodeCount": 9,
        "marriedSegmentGroup": "0",
        "leg": [
         {
          "kind": "qpxexpress#legInfo",
          "id": "Ls+ygRf+1aejOGc8",
          "aircraft": "320",
          "arrivalTime": "2016-12-01T07:20+01:00",
          "departureTime": "2016-12-01T06:30+01:00",
          "origin": "PRG",
          "destination": "TXL",
          "originTerminal": "2",
          "duration": 50,
          "operatingDisclosure": "OPERATED BY AIR BERLIN",
          "mileage": 174
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
        "id": "AIqnvU7qxgoGWlHNr+eLCRmIuCyo3Pb9FDgiUmYgvpwM",
        "carrier": "OK",
        "origin": "PRG",
        "destination": "BER",
        "basisCode": "BECOWOK"
       }
      ],
      "segmentPricing": [
       {
        "kind": "qpxexpress#segmentPricing",
        "fareId": "AIqnvU7qxgoGWlHNr+eLCRmIuCyo3Pb9FDgiUmYgvpwM",
        "segmentId": "Gwl+tVtwWgdVuglQ"
       }
      ],
      "baseFareTotal": "CZK10287",
      "saleFareTotal": "CZK10287",
      "saleTaxTotal": "CZK1673",
      "saleTotal": "CZK11960",
      "passengers": {
       "kind": "qpxexpress#passengerCounts",
       "adultCount": 1
      },
      "tax": [
       {
        "kind": "qpxexpress#taxInfo",
        "id": "CZ_001",
        "chargeType": "GOVERNMENT",
        "code": "CZ",
        "country": "CZ",
        "salePrice": "CZK591"
       },
       {
        "kind": "qpxexpress#taxInfo",
        "id": "YQ_F",
        "chargeType": "CARRIER_SURCHARGE",
        "code": "YQ",
        "salePrice": "CZK1082"
       }
      ],
      "fareCalculation": "PRG OK BER 427.19BECOWOK NUC 427.19 END ROE 24.0803 FARE CZK 10287 XT 591CZ 1082YQ",
      "latestTicketingTime": "2016-11-27T23:59-05:00",
      "ptc": "ADT"
     }
    ]
   },
   {
    "kind": "qpxexpress#tripOption",
    "saleTotal": "CZK11960",
    "id": "XMloLKMzcWJQg4kiWZejEA005",
    "slice": [
     {
      "kind": "qpxexpress#sliceInfo",
      "duration": 60,
      "segment": [
       {
        "kind": "qpxexpress#segmentInfo",
        "duration": 60,
        "flight": {
         "carrier": "OK",
         "number": "4264"
        },
        "id": "G+Y3o3idH3RVSdVX",
        "cabin": "COACH",
        "bookingCode": "B",
        "bookingCodeCount": 9,
        "marriedSegmentGroup": "0",
        "leg": [
         {
          "kind": "qpxexpress#legInfo",
          "id": "L8MrIqDirpb0nTzP",
          "aircraft": "DH4",
          "arrivalTime": "2016-12-01T20:30+01:00",
          "departureTime": "2016-12-01T19:30+01:00",
          "origin": "PRG",
          "destination": "TXL",
          "originTerminal": "2",
          "duration": 60,
          "operatingDisclosure": "OPERATED BY AIR BERLIN",
          "mileage": 174
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
        "id": "AIqnvU7qxgoGWlHNr+eLCRmIuCyo3Pb9FDgiUmYgvpwM",
        "carrier": "OK",
        "origin": "PRG",
        "destination": "BER",
        "basisCode": "BECOWOK"
       }
      ],
      "segmentPricing": [
       {
        "kind": "qpxexpress#segmentPricing",
        "fareId": "AIqnvU7qxgoGWlHNr+eLCRmIuCyo3Pb9FDgiUmYgvpwM",
        "segmentId": "G+Y3o3idH3RVSdVX"
       }
      ],
      "baseFareTotal": "CZK10287",
      "saleFareTotal": "CZK10287",
      "saleTaxTotal": "CZK1673",
      "saleTotal": "CZK11960",
      "passengers": {
       "kind": "qpxexpress#passengerCounts",
       "adultCount": 1
      },
      "tax": [
       {
        "kind": "qpxexpress#taxInfo",
        "id": "CZ_001",
        "chargeType": "GOVERNMENT",
        "code": "CZ",
        "country": "CZ",
        "salePrice": "CZK591"
       },
       {
        "kind": "qpxexpress#taxInfo",
        "id": "YQ_F",
        "chargeType": "CARRIER_SURCHARGE",
        "code": "YQ",
        "salePrice": "CZK1082"
       }
      ],
      "fareCalculation": "PRG OK BER 427.19BECOWOK NUC 427.19 END ROE 24.0803 FARE CZK 10287 XT 591CZ 1082YQ",
      "latestTicketingTime": "2016-11-27T23:59-05:00",
      "ptc": "ADT"
     }
    ]
   }
  ]
  }
  }
  '

  prg_lhr = '{
 "kind": "qpxExpress#tripsSearch",
 "trips": {
  "kind": "qpxexpress#tripOptions",
  "requestId": "Z9uKNJwVOmWX0w0Xv0PW2A",
  "data": {
   "kind": "qpxexpress#data",
   "airport": [
    {
     "kind": "qpxexpress#airportData",
     "code": "LHR",
     "city": "LON",
     "name": "London Heathrow"
    },
    {
     "kind": "qpxexpress#airportData",
     "code": "PRG",
     "city": "PRG",
     "name": "Prague Ruzyne"
    }
   ],
   "city": [
    {
     "kind": "qpxexpress#cityData",
     "code": "LON",
     "name": "London"
    },
    {
     "kind": "qpxexpress#cityData",
     "code": "PRG",
     "name": "Prague"
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
     "id": "CZ_001",
     "name": "Czech Republic Embarkation Tax"
    }
   ],
   "carrier": [
    {
     "kind": "qpxexpress#carrierData",
     "code": "BA",
     "name": "British Airways"
    }
   ]
  },
  "tripOption": [
   {
    "kind": "qpxexpress#tripOption",
    "saleTotal": "CZK9287",
    "id": "bvLGraZ2oe2P8tpk1tW3HP001",
    "slice": [
     {
      "kind": "qpxexpress#sliceInfo",
      "duration": 140,
      "segment": [
       {
        "kind": "qpxexpress#segmentInfo",
        "duration": 140,
        "flight": {
         "carrier": "BA",
         "number": "855"
        },
        "id": "GoWSZZx4t90BHiJ8",
        "cabin": "COACH",
        "bookingCode": "H",
        "bookingCodeCount": 4,
        "marriedSegmentGroup": "0",
        "leg": [
         {
          "kind": "qpxexpress#legInfo",
          "id": "L+9AvEmnQ8s+TVu8",
          "aircraft": "320",
          "arrivalTime": "2016-12-01T12:25+00:00",
          "departureTime": "2016-12-01T11:05+01:00",
          "origin": "PRG",
          "destination": "LHR",
          "originTerminal": "1",
          "destinationTerminal": "3",
          "duration": 140,
          "mileage": 648,
          "meal": "Snack or Brunch"
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
        "id": "AaaKLIwycxP76/uAXAdGv9g/1tY+mSQglHl4dxf/Vjws",
        "carrier": "BA",
        "origin": "PRG",
        "destination": "LON",
        "basisCode": "HV2HO"
       }
      ],
      "segmentPricing": [
       {
        "kind": "qpxexpress#segmentPricing",
        "fareId": "AaaKLIwycxP76/uAXAdGv9g/1tY+mSQglHl4dxf/Vjws",
        "segmentId": "GoWSZZx4t90BHiJ8"
       }
      ],
      "baseFareTotal": "CZK8696",
      "saleFareTotal": "CZK8696",
      "saleTaxTotal": "CZK591",
      "saleTotal": "CZK9287",
      "passengers": {
       "kind": "qpxexpress#passengerCounts",
       "adultCount": 1
      },
      "tax": [
       {
        "kind": "qpxexpress#taxInfo",
        "id": "CZ_001",
        "chargeType": "GOVERNMENT",
        "code": "CZ",
        "country": "CZ",
        "salePrice": "CZK591"
       }
      ],
      "fareCalculation": "PRG BA LON 361.12HV2HO NUC 361.12 END ROE 24.0803 FARE CZK 8696 XT 591CZ",
      "latestTicketingTime": "2016-11-29T23:59-05:00",
      "ptc": "ADT"
     }
    ]
   },
   {
    "kind": "qpxexpress#tripOption",
    "saleTotal": "CZK12595",
    "id": "bvLGraZ2oe2P8tpk1tW3HP003",
    "slice": [
     {
      "kind": "qpxexpress#sliceInfo",
      "duration": 140,
      "segment": [
       {
        "kind": "qpxexpress#segmentInfo",
        "duration": 140,
        "flight": {
         "carrier": "BA",
         "number": "853"
        },
        "id": "GDLtI+jblSqCxcDP",
        "cabin": "COACH",
        "bookingCode": "B",
        "bookingCodeCount": 9,
        "marriedSegmentGroup": "0",
        "leg": [
         {
          "kind": "qpxexpress#legInfo",
          "id": "Lic6AgzjIKIo6AzJ",
          "aircraft": "320",
          "arrivalTime": "2016-12-01T08:20+00:00",
          "departureTime": "2016-12-01T07:00+01:00",
          "origin": "PRG",
          "destination": "LHR",
          "originTerminal": "1",
          "destinationTerminal": "3",
          "duration": 140,
          "mileage": 648,
          "meal": "Snack or Brunch"
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
        "id": "APk9xuYWtt21ScsBDD5rOkSOWJ1RepKjdeuVHXTLJTGo",
        "carrier": "BA",
        "origin": "PRG",
        "destination": "LON",
        "basisCode": "BV3HO"
       }
      ],
      "segmentPricing": [
       {
        "kind": "qpxexpress#segmentPricing",
        "fareId": "APk9xuYWtt21ScsBDD5rOkSOWJ1RepKjdeuVHXTLJTGo",
        "segmentId": "GDLtI+jblSqCxcDP"
       }
      ],
      "baseFareTotal": "CZK12004",
      "saleFareTotal": "CZK12004",
      "saleTaxTotal": "CZK591",
      "saleTotal": "CZK12595",
      "passengers": {
       "kind": "qpxexpress#passengerCounts",
       "adultCount": 1
      },
      "tax": [
       {
        "kind": "qpxexpress#taxInfo",
        "id": "CZ_001",
        "chargeType": "GOVERNMENT",
        "code": "CZ",
        "country": "CZ",
        "salePrice": "CZK591"
       }
      ],
      "fareCalculation": "PRG BA LON 498.49BV3HO NUC 498.49 END ROE 24.0803 FARE CZK 12004 XT 591CZ",
      "latestTicketingTime": "2016-12-01T00:59-05:00",
      "ptc": "ADT",
      "refundable": true
     }
    ]
   },
   {
    "kind": "qpxexpress#tripOption",
    "saleTotal": "CZK12595",
    "id": "bvLGraZ2oe2P8tpk1tW3HP002",
    "slice": [
     {
      "kind": "qpxexpress#sliceInfo",
      "duration": 135,
      "segment": [
       {
        "kind": "qpxexpress#segmentInfo",
        "duration": 135,
        "flight": {
         "carrier": "BA",
         "number": "859"
        },
        "id": "GrRoTFwb6RAdhz9j",
        "cabin": "COACH",
        "bookingCode": "B",
        "bookingCodeCount": 2,
        "marriedSegmentGroup": "0",
        "leg": [
         {
          "kind": "qpxexpress#legInfo",
          "id": "LqCHhXtjX9nq6HEz",
          "aircraft": "320",
          "arrivalTime": "2016-12-01T15:35+00:00",
          "departureTime": "2016-12-01T14:20+01:00",
          "origin": "PRG",
          "destination": "LHR",
          "originTerminal": "1",
          "destinationTerminal": "3",
          "duration": 135,
          "mileage": 648,
          "meal": "Snack or Brunch"
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
        "id": "APk9xuYWtt21ScsBDD5rOkSOWJ1RepKjdeuVHXTLJTGo",
        "carrier": "BA",
        "origin": "PRG",
        "destination": "LON",
        "basisCode": "BV3HO"
       }
      ],
      "segmentPricing": [
       {
        "kind": "qpxexpress#segmentPricing",
        "fareId": "APk9xuYWtt21ScsBDD5rOkSOWJ1RepKjdeuVHXTLJTGo",
        "segmentId": "GrRoTFwb6RAdhz9j"
       }
      ],
      "baseFareTotal": "CZK12004",
      "saleFareTotal": "CZK12004",
      "saleTaxTotal": "CZK591",
      "saleTotal": "CZK12595",
      "passengers": {
       "kind": "qpxexpress#passengerCounts",
       "adultCount": 1
      },
      "tax": [
       {
        "kind": "qpxexpress#taxInfo",
        "id": "CZ_001",
        "chargeType": "GOVERNMENT",
        "code": "CZ",
        "country": "CZ",
        "salePrice": "CZK591"
       }
      ],
      "fareCalculation": "PRG BA LON 498.49BV3HO NUC 498.49 END ROE 24.0803 FARE CZK 12004 XT 591CZ",
      "latestTicketingTime": "2016-12-01T08:19-05:00",
      "ptc": "ADT",
      "refundable": true
     }
    ]
   },
   {
    "kind": "qpxexpress#tripOption",
    "saleTotal": "CZK17994",
    "id": "bvLGraZ2oe2P8tpk1tW3HP004",
    "slice": [
     {
      "kind": "qpxexpress#sliceInfo",
      "duration": 130,
      "segment": [
       {
        "kind": "qpxexpress#segmentInfo",
        "duration": 130,
        "flight": {
         "carrier": "BA",
         "number": "857"
        },
        "id": "GuQ2tM5tRn6NAgdf",
        "cabin": "COACH",
        "bookingCode": "Y",
        "bookingCodeCount": 7,
        "marriedSegmentGroup": "0",
        "leg": [
         {
          "kind": "qpxexpress#legInfo",
          "id": "L3QlrApC7nhWAUoF",
          "aircraft": "320",
          "arrivalTime": "2016-12-01T19:45+00:00",
          "departureTime": "2016-12-01T18:35+01:00",
          "origin": "PRG",
          "destination": "LHR",
          "originTerminal": "1",
          "destinationTerminal": "3",
          "duration": 130,
          "mileage": 648,
          "meal": "Snack or Brunch"
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
        "id": "A6BrF88WZrplHSZ/5G8Dx7zSNo/h73W43OxAT1zUnl1c",
        "carrier": "BA",
        "origin": "PRG",
        "destination": "LON",
        "basisCode": "YV3HO"
       }
      ],
      "segmentPricing": [
       {
        "kind": "qpxexpress#segmentPricing",
        "fareId": "A6BrF88WZrplHSZ/5G8Dx7zSNo/h73W43OxAT1zUnl1c",
        "segmentId": "GuQ2tM5tRn6NAgdf"
       }
      ],
      "baseFareTotal": "CZK17403",
      "saleFareTotal": "CZK17403",
      "saleTaxTotal": "CZK591",
      "saleTotal": "CZK17994",
      "passengers": {
       "kind": "qpxexpress#passengerCounts",
       "adultCount": 1
      },
      "tax": [
       {
        "kind": "qpxexpress#taxInfo",
        "id": "CZ_001",
        "chargeType": "GOVERNMENT",
        "code": "CZ",
        "country": "CZ",
        "salePrice": "CZK591"
       }
      ],
      "fareCalculation": "PRG BA LON 722.70YV3HO NUC 722.70 END ROE 24.0803 FARE CZK 17403 XT 591CZ",
      "latestTicketingTime": "2016-12-01T12:34-05:00",
      "ptc": "ADT",
      "refundable": true
     }
    ]
   }
  ]
 }
}
'

  prg_lgw = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "dYwDY12ciW9e5hd4J0PW2B",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "LGW",
       "city": "LON",
       "name": "London Gatwick"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "LON",
       "name": "London"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
      }
     ],
     "aircraft": [
      {
       "kind": "qpxexpress#aircraftData",
       "code": "738",
       "name": "Boeing 737"
      }
     ],
     "tax": [
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_F",
       "name": "OK YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "OK",
       "name": "Czech Airlines a.s,. CSA"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "QS",
       "name": "Travel Service, A.S."
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK841",
      "id": "OpyJzxONW1LV0NbxMTtwpS001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 125,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 125,
          "flight": {
           "carrier": "QS",
           "number": "1098"
          },
          "id": "GT1XHeQXLIp5E6li",
          "cabin": "COACH",
          "bookingCode": "J",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LoyRGmAwrDecnNaj",
            "aircraft": "738",
            "arrivalTime": "2016-12-01T20:50+00:00",
            "departureTime": "2016-12-01T19:45+01:00",
            "origin": "PRG",
            "destination": "LGW",
            "originTerminal": "1",
            "destinationTerminal": "S",
            "duration": 125,
            "mileage": 636,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AE35qW7UyIjzbfNPXydMMpyJgNvE/CvLdd9uP8Rs",
          "carrier": "QS",
          "origin": "PRG",
          "destination": "LON",
          "basisCode": "JQS"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AE35qW7UyIjzbfNPXydMMpyJgNvE/CvLdd9uP8Rs",
          "segmentId": "GT1XHeQXLIp5E6li"
         }
        ],
        "baseFareTotal": "CZK250",
        "saleFareTotal": "CZK250",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK841",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG QS LON 10.38JQS NUC 10.38 END ROE 24.0803 FARE CZK 250 XT 591CZ",
        "latestTicketingTime": "2016-11-27T08:43-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK841",
      "id": "OpyJzxONW1LV0NbxMTtwpS002",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 125,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 125,
          "flight": {
           "carrier": "QS",
           "number": "1096"
          },
          "id": "GPBtY06pCoEQnuRB",
          "cabin": "COACH",
          "bookingCode": "J",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LqavxLz2cHE0OEEe",
            "aircraft": "738",
            "arrivalTime": "2016-12-01T13:35+00:00",
            "departureTime": "2016-12-01T12:30+01:00",
            "origin": "PRG",
            "destination": "LGW",
            "originTerminal": "1",
            "destinationTerminal": "S",
            "duration": 125,
            "mileage": 636,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AE35qW7UyIjzbfNPXydMMpyJgNvE/CvLdd9uP8Rs",
          "carrier": "QS",
          "origin": "PRG",
          "destination": "LON",
          "basisCode": "JQS"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AE35qW7UyIjzbfNPXydMMpyJgNvE/CvLdd9uP8Rs",
          "segmentId": "GPBtY06pCoEQnuRB"
         }
        ],
        "baseFareTotal": "CZK250",
        "saleFareTotal": "CZK250",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK841",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG QS LON 10.38JQS NUC 10.38 END ROE 24.0803 FARE CZK 250 XT 591CZ",
        "latestTicketingTime": "2016-11-27T08:43-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2923",
      "id": "OpyJzxONW1LV0NbxMTtwpS003",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 125,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 125,
          "flight": {
           "carrier": "OK",
           "number": "4658"
          },
          "id": "Gl4R9OsMCKYnxp9J",
          "cabin": "COACH",
          "bookingCode": "N",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LNERPveBaaEKXNJX",
            "aircraft": "738",
            "arrivalTime": "2016-12-01T20:50+00:00",
            "departureTime": "2016-12-01T19:45+01:00",
            "origin": "PRG",
            "destination": "LGW",
            "originTerminal": "1",
            "destinationTerminal": "S",
            "duration": 125,
            "operatingDisclosure": "OPERATED BY TRAVEL SERVICE",
            "mileage": 636,
            "meal": "Food and Beverages for Purchase"
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
          "id": "ALgGfJgkJpYHXf/YqWZX5lcVpvSSIaQgX9g8RKuo/vtE",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "LON",
          "basisCode": "NECTSOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "ALgGfJgkJpYHXf/YqWZX5lcVpvSSIaQgX9g8RKuo/vtE",
          "segmentId": "Gl4R9OsMCKYnxp9J"
         }
        ],
        "baseFareTotal": "CZK1250",
        "saleFareTotal": "CZK1250",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK2923",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK LON 51.90NECTSOK NUC 51.90 END ROE 24.0803 FARE CZK 1250 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK3273",
      "id": "OpyJzxONW1LV0NbxMTtwpS004",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 125,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 125,
          "flight": {
           "carrier": "OK",
           "number": "4654"
          },
          "id": "GJm4r8gwlYVWJad7",
          "cabin": "COACH",
          "bookingCode": "V",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LCcWyM5gNmzOI3vg",
            "aircraft": "738",
            "arrivalTime": "2016-12-01T13:35+00:00",
            "departureTime": "2016-12-01T12:30+01:00",
            "origin": "PRG",
            "destination": "LGW",
            "originTerminal": "1",
            "destinationTerminal": "S",
            "duration": 125,
            "operatingDisclosure": "OPERATED BY TRAVEL SERVICE",
            "mileage": 636,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AVlr7cEt1QLunW9r2OQ0TrULJmwCkK2cCLbHoIkmmpBk",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "LON",
          "basisCode": "VECTSOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AVlr7cEt1QLunW9r2OQ0TrULJmwCkK2cCLbHoIkmmpBk",
          "segmentId": "GJm4r8gwlYVWJad7"
         }
        ],
        "baseFareTotal": "CZK1600",
        "saleFareTotal": "CZK1600",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK3273",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK LON 66.44VECTSOK NUC 66.44 END ROE 24.0803 FARE CZK 1600 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     }
    ]
   }
  }
  '

  prg_cdg = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "bAi9gB1m1UiB81GEt0PW2C",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "CDG",
       "city": "PAR",
       "name": "Paris Charles de Gaulle"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "PAR",
       "name": "Paris"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
      }
     ],
     "aircraft": [
      {
       "kind": "qpxexpress#aircraftData",
       "code": "319",
       "name": "Airbus A319"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "320",
       "name": "Airbus A320"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "32S",
       "name": "Airbus A320"
      }
     ],
     "tax": [
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_F",
       "name": "OK YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_I",
       "name": "IB YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "AF",
       "name": "Air France"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "BA",
       "name": "British Airways"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "IB",
       "name": "Iberia Lineas Aereas de Espana S.A."
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "OK",
       "name": "Czech Airlines a.s,. CSA"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "VY",
       "name": "Vueling Airlines S.A."
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1244",
      "id": "P2PBH68HjBKNIddSlB6xJ5001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 105,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 105,
          "flight": {
           "carrier": "AF",
           "number": "1583"
          },
          "id": "GBD6Imdb8SUq2b9p",
          "cabin": "COACH",
          "bookingCode": "R",
          "bookingCodeCount": 6,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LSkFhhjREs80kdsW",
            "aircraft": "320",
            "arrivalTime": "2016-12-01T22:15+01:00",
            "departureTime": "2016-12-01T20:30+01:00",
            "origin": "PRG",
            "destination": "CDG",
            "originTerminal": "2",
            "destinationTerminal": "2F",
            "duration": 105,
            "mileage": 529,
            "meal": "Snack or Brunch"
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
          "id": "ATWavqJ1UZJUQT4JWoNnrbBBBrGw/Ub5pLIrr4oPBQ8M",
          "carrier": "AF",
          "origin": "PRG",
          "destination": "PAR",
          "basisCode": "RWKYCZ9"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "ATWavqJ1UZJUQT4JWoNnrbBBBrGw/Ub5pLIrr4oPBQ8M",
          "segmentId": "GBD6Imdb8SUq2b9p"
         }
        ],
        "baseFareTotal": "CZK653",
        "saleFareTotal": "CZK653",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK1244",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG AF PAR 27.11RWKYCZ9 NUC 27.11 END ROE 24.0803 FARE CZK 653 XT 591CZ",
        "latestTicketingTime": "2016-12-01T14:29-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1376",
      "id": "P2PBH68HjBKNIddSlB6xJ5002",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 105,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 105,
          "flight": {
           "carrier": "IB",
           "number": "5215"
          },
          "id": "GSZvdwZZW76Q-FMJ",
          "cabin": "COACH",
          "bookingCode": "F",
          "bookingCodeCount": 4,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LkzytPtnd8fDelng",
            "aircraft": "320",
            "arrivalTime": "2016-12-01T14:35+01:00",
            "departureTime": "2016-12-01T12:50+01:00",
            "origin": "PRG",
            "destination": "CDG",
            "originTerminal": "2",
            "destinationTerminal": "3",
            "duration": 105,
            "operatingDisclosure": "OPERATED BY VUELING AIRLINES",
            "mileage": 529,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AiykdExyrW9GW+gX8iUnN3LxetnV5h+IKQT3mUGmYu+s",
          "carrier": "IB",
          "origin": "PRG",
          "destination": "PAR",
          "basisCode": "FOWNVY"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AiykdExyrW9GW+gX8iUnN3LxetnV5h+IKQT3mUGmYu+s",
          "segmentId": "GSZvdwZZW76Q-FMJ"
         }
        ],
        "baseFareTotal": "CZK622",
        "saleFareTotal": "CZK622",
        "saleTaxTotal": "CZK754",
        "saleTotal": "CZK1376",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK163"
         }
        ],
        "fareCalculation": "PRG IB PAR 25.83FOWNVY NUC 25.83 END ROE 24.0803 FARE CZK 622 XT 591CZ 163YQ",
        "latestTicketingTime": "2016-11-27T08:44-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1487",
      "id": "P2PBH68HjBKNIddSlB6xJ5005",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 110,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 110,
          "flight": {
           "carrier": "OK",
           "number": "758"
          },
          "id": "GUg2a4OIYH19scZ2",
          "cabin": "COACH",
          "bookingCode": "O",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LIBpkqHYFXfRkI5W",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T09:00+01:00",
            "departureTime": "2016-12-01T07:10+01:00",
            "origin": "PRG",
            "destination": "CDG",
            "originTerminal": "2",
            "destinationTerminal": "2D",
            "duration": 110,
            "mileage": 529,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AuHvyQ4pZTnZnO4KGS1bKxFKQVGEAcu7fTVuIqriOCgs",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "PAR",
          "basisCode": "OECOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AuHvyQ4pZTnZnO4KGS1bKxFKQVGEAcu7fTVuIqriOCgs",
          "segmentId": "GUg2a4OIYH19scZ2"
         }
        ],
        "baseFareTotal": "CZK355",
        "saleFareTotal": "CZK355",
        "saleTaxTotal": "CZK1132",
        "saleTotal": "CZK1487",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK541"
         }
        ],
        "fareCalculation": "PRG OK PAR 14.74OECOK NUC 14.74 END ROE 24.0803 FARE CZK 355 XT 591CZ 541YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1487",
      "id": "P2PBH68HjBKNIddSlB6xJ5004",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 110,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 110,
          "flight": {
           "carrier": "OK",
           "number": "766"
          },
          "id": "GILUx5VUSHlHZyVH",
          "cabin": "COACH",
          "bookingCode": "O",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LqA1AM4DHSSDeZKt",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T19:25+01:00",
            "departureTime": "2016-12-01T17:35+01:00",
            "origin": "PRG",
            "destination": "CDG",
            "originTerminal": "2",
            "destinationTerminal": "2D",
            "duration": 110,
            "mileage": 529,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AuHvyQ4pZTnZnO4KGS1bKxFKQVGEAcu7fTVuIqriOCgs",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "PAR",
          "basisCode": "OECOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AuHvyQ4pZTnZnO4KGS1bKxFKQVGEAcu7fTVuIqriOCgs",
          "segmentId": "GILUx5VUSHlHZyVH"
         }
        ],
        "baseFareTotal": "CZK355",
        "saleFareTotal": "CZK355",
        "saleTaxTotal": "CZK1132",
        "saleTotal": "CZK1487",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK541"
         }
        ],
        "fareCalculation": "PRG OK PAR 14.74OECOK NUC 14.74 END ROE 24.0803 FARE CZK 355 XT 591CZ 541YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1487",
      "id": "P2PBH68HjBKNIddSlB6xJ5003",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 110,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 110,
          "flight": {
           "carrier": "OK",
           "number": "760"
          },
          "id": "GEYxzeKzhxzjHHdg",
          "cabin": "COACH",
          "bookingCode": "O",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "L+a1gXsbZQA-0ZW6",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T14:15+01:00",
            "departureTime": "2016-12-01T12:25+01:00",
            "origin": "PRG",
            "destination": "CDG",
            "originTerminal": "2",
            "destinationTerminal": "2D",
            "duration": 110,
            "mileage": 529,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AuHvyQ4pZTnZnO4KGS1bKxFKQVGEAcu7fTVuIqriOCgs",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "PAR",
          "basisCode": "OECOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AuHvyQ4pZTnZnO4KGS1bKxFKQVGEAcu7fTVuIqriOCgs",
          "segmentId": "GEYxzeKzhxzjHHdg"
         }
        ],
        "baseFareTotal": "CZK355",
        "saleFareTotal": "CZK355",
        "saleTaxTotal": "CZK1132",
        "saleTotal": "CZK1487",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK541"
         }
        ],
        "fareCalculation": "PRG OK PAR 14.74OECOK NUC 14.74 END ROE 24.0803 FARE CZK 355 XT 591CZ 541YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1565",
      "id": "P2PBH68HjBKNIddSlB6xJ5006",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 105,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 105,
          "flight": {
           "carrier": "OK",
           "number": "4766"
          },
          "id": "GPtnVNuaGZxF2SdA",
          "cabin": "COACH",
          "bookingCode": "W",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LOXGxyCXpIswjXiQ",
            "aircraft": "32S",
            "arrivalTime": "2016-12-01T16:55+01:00",
            "departureTime": "2016-12-01T15:10+01:00",
            "origin": "PRG",
            "destination": "CDG",
            "originTerminal": "2",
            "destinationTerminal": "2F",
            "duration": 105,
            "operatingDisclosure": "OPERATED BY AIR FRANCE",
            "mileage": 529
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
          "id": "AW/NCPzN1wqGQ1wUvZdJiHScJWoc4dynVm8wIKuCM5mQ",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "PAR",
          "basisCode": "WECAFOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AW/NCPzN1wqGQ1wUvZdJiHScJWoc4dynVm8wIKuCM5mQ",
          "segmentId": "GPtnVNuaGZxF2SdA"
         }
        ],
        "baseFareTotal": "CZK325",
        "saleFareTotal": "CZK325",
        "saleTaxTotal": "CZK1240",
        "saleTotal": "CZK1565",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK649"
         }
        ],
        "fareCalculation": "PRG OK PAR 13.49WECAFOK NUC 13.49 END ROE 24.0803 FARE CZK 325 XT 591CZ 649YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1646",
      "id": "P2PBH68HjBKNIddSlB6xJ5007",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 105,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 105,
          "flight": {
           "carrier": "BA",
           "number": "8045"
          },
          "id": "GAOui6c1WDDsfBEc",
          "cabin": "COACH",
          "bookingCode": "O",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LCzGwP-Mmn1K3aGN",
            "aircraft": "320",
            "arrivalTime": "2016-12-01T14:35+01:00",
            "departureTime": "2016-12-01T12:50+01:00",
            "origin": "PRG",
            "destination": "CDG",
            "originTerminal": "2",
            "destinationTerminal": "3",
            "duration": 105,
            "operatingDisclosure": "OPERATED BY VUELING AIRLINES",
            "mileage": 529,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AvLsla+9h8NQXn3nV4dwhOtdvNJQ5NlTu5LhuS267hd/",
          "carrier": "BA",
          "origin": "PRG",
          "destination": "PAR",
          "basisCode": "OOWVY"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AvLsla+9h8NQXn3nV4dwhOtdvNJQ5NlTu5LhuS267hd/",
          "segmentId": "GAOui6c1WDDsfBEc"
         }
        ],
        "baseFareTotal": "EUR39.00",
        "saleFareTotal": "CZK1055",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK1646",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG BA PAR 43.76OOWVY NUC 43.76 END ROE 0.891079 FARE EUR 39.00 EQU CZK 1055 XT 591CZ",
        "latestTicketingTime": "2016-11-26T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1917",
      "id": "P2PBH68HjBKNIddSlB6xJ5008",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 105,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 105,
          "flight": {
           "carrier": "VY",
           "number": "9497"
          },
          "id": "GJm5f64qyBZzP1cm",
          "cabin": "COACH",
          "bookingCode": "W",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LMhFr3gFpGwvLGkP",
            "aircraft": "320",
            "arrivalTime": "2016-12-01T14:35+01:00",
            "departureTime": "2016-12-01T12:50+01:00",
            "origin": "PRG",
            "destination": "CDG",
            "originTerminal": "2",
            "destinationTerminal": "3",
            "duration": 105,
            "mileage": 529,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AshJkHxPImzT+iXkWih1xOYpLKuMQmvJqs/J3e+CICBQ",
          "carrier": "VY",
          "origin": "PRG",
          "destination": "PAR",
          "basisCode": "WOWVY"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AshJkHxPImzT+iXkWih1xOYpLKuMQmvJqs/J3e+CICBQ",
          "segmentId": "GJm5f64qyBZzP1cm"
         }
        ],
        "baseFareTotal": "EUR43.00",
        "saleFareTotal": "CZK1163",
        "saleTaxTotal": "CZK754",
        "saleTotal": "CZK1917",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK163"
         }
        ],
        "fareCalculation": "PRG VY PAR 48.25WOWVY NUC 48.25 END ROE 0.891079 FARE EUR 43.00 EQU CZK 1163 XT 591CZ 163YQ",
        "latestTicketingTime": "2016-11-27T08:44-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1921",
      "id": "P2PBH68HjBKNIddSlB6xJ500A",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 110,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 110,
          "flight": {
           "carrier": "AF",
           "number": "5037"
          },
          "id": "G0X2o6+Xmf0UxpCS",
          "cabin": "COACH",
          "bookingCode": "R",
          "bookingCodeCount": 2,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LoHxzYqLmomxsrNO",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T09:00+01:00",
            "departureTime": "2016-12-01T07:10+01:00",
            "origin": "PRG",
            "destination": "CDG",
            "originTerminal": "2",
            "destinationTerminal": "2D",
            "duration": 110,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 529,
            "meal": "Food and Beverages for Purchase"
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
          "id": "A2GhkwfAYuwqdw7a4pJgxZo3AfukyBy+oD2a10UglOCg",
          "carrier": "AF",
          "origin": "PRG",
          "destination": "PAR",
          "basisCode": "RWKWCZ"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A2GhkwfAYuwqdw7a4pJgxZo3AfukyBy+oD2a10UglOCg",
          "segmentId": "G0X2o6+Xmf0UxpCS"
         }
        ],
        "baseFareTotal": "CZK1330",
        "saleFareTotal": "CZK1330",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK1921",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG AF PAR 55.23RWKWCZ NUC 55.23 END ROE 24.0803 FARE CZK 1330 XT 591CZ",
        "latestTicketingTime": "2016-12-01T01:09-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1921",
      "id": "P2PBH68HjBKNIddSlB6xJ5009",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 110,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 110,
          "flight": {
           "carrier": "AF",
           "number": "5033"
          },
          "id": "GEQAt-hir8uoMCIe",
          "cabin": "COACH",
          "bookingCode": "R",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "L41wzvOaHP4k3Eg+",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T14:15+01:00",
            "departureTime": "2016-12-01T12:25+01:00",
            "origin": "PRG",
            "destination": "CDG",
            "originTerminal": "2",
            "destinationTerminal": "2D",
            "duration": 110,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 529,
            "meal": "Food and Beverages for Purchase"
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
          "id": "A2GhkwfAYuwqdw7a4pJgxZo3AfukyBy+oD2a10UglOCg",
          "carrier": "AF",
          "origin": "PRG",
          "destination": "PAR",
          "basisCode": "RWKWCZ"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A2GhkwfAYuwqdw7a4pJgxZo3AfukyBy+oD2a10UglOCg",
          "segmentId": "GEQAt-hir8uoMCIe"
         }
        ],
        "baseFareTotal": "CZK1330",
        "saleFareTotal": "CZK1330",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK1921",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG AF PAR 55.23RWKWCZ NUC 55.23 END ROE 24.0803 FARE CZK 1330 XT 591CZ",
        "latestTicketingTime": "2016-12-01T06:24-05:00",
        "ptc": "ADT"
       }
      ]
     }
    ]
   }
  }
  '

  prg_bcn = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "6rCNpN8K3V80aF0XI0PW2D",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "BCN",
       "city": "BCN",
       "name": "Barcelona"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "BCN",
       "name": "Barcelona"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
      }
     ],
     "aircraft": [
      {
       "kind": "qpxexpress#aircraftData",
       "code": "320",
       "name": "Airbus A320"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "321",
       "name": "Airbus A321"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "738",
       "name": "Boeing 737"
      }
     ],
     "tax": [
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_F",
       "name": "QS YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_I",
       "name": "IB YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "BA",
       "name": "British Airways"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "IB",
       "name": "Iberia Lineas Aereas de Espana S.A."
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "OK",
       "name": "Czech Airlines a.s,. CSA"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "QS",
       "name": "Travel Service, A.S."
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "VY",
       "name": "Vueling Airlines S.A."
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2004",
      "id": "875lwuF7126UKuPAyhOuG3001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 155,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 155,
          "flight": {
           "carrier": "QS",
           "number": "1058"
          },
          "id": "G18Lb82qOg-Tmbc5",
          "cabin": "COACH",
          "bookingCode": "J",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LsfPWfbHYZuW+SYn",
            "aircraft": "738",
            "arrivalTime": "2016-12-01T13:55+01:00",
            "departureTime": "2016-12-01T11:20+01:00",
            "origin": "PRG",
            "destination": "BCN",
            "originTerminal": "2",
            "destinationTerminal": "2",
            "duration": 155,
            "mileage": 843,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AXEtXU7qZN80Fou3i2t8B9TsoBKBGlvrmO1wdvfA",
          "carrier": "QS",
          "origin": "PRG",
          "destination": "BCN",
          "basisCode": "JQS"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AXEtXU7qZN80Fou3i2t8B9TsoBKBGlvrmO1wdvfA",
          "segmentId": "G18Lb82qOg-Tmbc5"
         }
        ],
        "baseFareTotal": "CZK250",
        "saleFareTotal": "CZK250",
        "saleTaxTotal": "CZK1754",
        "saleTotal": "CZK2004",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1163"
         }
        ],
        "fareCalculation": "PRG QS BCN 10.38JQS NUC 10.38 END ROE 24.0803 FARE CZK 250 XT 591CZ 1163YQ",
        "latestTicketingTime": "2016-11-27T08:45-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2335",
      "id": "875lwuF7126UKuPAyhOuG3002",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 155,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 155,
          "flight": {
           "carrier": "OK",
           "number": "5688"
          },
          "id": "G51l3sVImrhWmsI4",
          "cabin": "COACH",
          "bookingCode": "S",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LtvmWjQZICeD-XTn",
            "aircraft": "738",
            "arrivalTime": "2016-12-01T13:55+01:00",
            "departureTime": "2016-12-01T11:20+01:00",
            "origin": "PRG",
            "destination": "BCN",
            "originTerminal": "2",
            "destinationTerminal": "2",
            "duration": 155,
            "operatingDisclosure": "OPERATED BY TRAVEL SERVICE",
            "mileage": 843,
            "meal": "Food and Beverages for Purchase"
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
          "id": "Aome+FhkmWMNQqAZIQQ9XI39oqW1+cMcE6G0Z8Ninn9w",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "BCN",
          "basisCode": "SECTSOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "Aome+FhkmWMNQqAZIQQ9XI39oqW1+cMcE6G0Z8Ninn9w",
          "segmentId": "G51l3sVImrhWmsI4"
         }
        ],
        "baseFareTotal": "CZK662",
        "saleFareTotal": "CZK662",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK2335",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK BCN 27.49SECTSOK NUC 27.49 END ROE 24.0803 FARE CZK 662 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK4999",
      "id": "875lwuF7126UKuPAyhOuG3004",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 145,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 145,
          "flight": {
           "carrier": "IB",
           "number": "5851"
          },
          "id": "GknERpOmtKHety+P",
          "cabin": "COACH",
          "bookingCode": "L",
          "bookingCodeCount": 4,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "L0IZrshLCASSV9IN",
            "aircraft": "320",
            "arrivalTime": "2016-12-01T17:55+01:00",
            "departureTime": "2016-12-01T15:30+01:00",
            "origin": "PRG",
            "destination": "BCN",
            "originTerminal": "2",
            "destinationTerminal": "1",
            "duration": 145,
            "operatingDisclosure": "OPERATED BY VUELING AIRLINES",
            "mileage": 843
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
          "id": "Azi/qaF1Uh0gbT0LGQo+cUaJ+56lMMqe94BubKP6unxU",
          "carrier": "IB",
          "origin": "PRG",
          "destination": "BCN",
          "basisCode": "LOWNVY"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "Azi/qaF1Uh0gbT0LGQo+cUaJ+56lMMqe94BubKP6unxU",
          "segmentId": "GknERpOmtKHety+P"
         }
        ],
        "baseFareTotal": "CZK3650",
        "saleFareTotal": "CZK3650",
        "saleTaxTotal": "CZK1349",
        "saleTotal": "CZK4999",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK758"
         }
        ],
        "fareCalculation": "PRG IB BCN 151.57LOWNVY NUC 151.57 END ROE 24.0803 FARE CZK 3650 XT 591CZ 758YQ",
        "latestTicketingTime": "2016-11-27T08:45-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK4999",
      "id": "875lwuF7126UKuPAyhOuG3003",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 145,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 145,
          "flight": {
           "carrier": "BA",
           "number": "8183"
          },
          "id": "G4DD5WYTX8zIt3jq",
          "cabin": "COACH",
          "bookingCode": "L",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LvDnOwMcM+Ycud3E",
            "aircraft": "321",
            "arrivalTime": "2016-12-01T17:55+01:00",
            "departureTime": "2016-12-01T15:30+01:00",
            "origin": "PRG",
            "destination": "BCN",
            "originTerminal": "2",
            "destinationTerminal": "1",
            "duration": 145,
            "operatingDisclosure": "OPERATED BY VUELING AIRLINES",
            "mileage": 843,
            "meal": "Food and Beverages for Purchase"
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
          "id": "A6jukw1rwYHsOpC+PrjxdADJCRPTNkk0B+JnJIcSPx5s",
          "carrier": "BA",
          "origin": "PRG",
          "destination": "BCN",
          "basisCode": "LOWVY"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A6jukw1rwYHsOpC+PrjxdADJCRPTNkk0B+JnJIcSPx5s",
          "segmentId": "G4DD5WYTX8zIt3jq"
         }
        ],
        "baseFareTotal": "EUR163.00",
        "saleFareTotal": "CZK4408",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK4999",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG BA BCN 182.92LOWVY NUC 182.92 END ROE 0.891079 FARE EUR 163.00 EQU CZK 4408 XT 591CZ",
        "latestTicketingTime": "2016-11-29T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK5000",
      "id": "875lwuF7126UKuPAyhOuG3005",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 145,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 145,
          "flight": {
           "carrier": "VY",
           "number": "8657"
          },
          "id": "Ghro4YizDveeUKTw",
          "cabin": "COACH",
          "bookingCode": "V",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "L3EhWkp+82C4nhb1",
            "aircraft": "321",
            "arrivalTime": "2016-12-01T17:55+01:00",
            "departureTime": "2016-12-01T15:30+01:00",
            "origin": "PRG",
            "destination": "BCN",
            "originTerminal": "2",
            "destinationTerminal": "1",
            "duration": 145,
            "mileage": 843,
            "meal": "Food and Beverages for Purchase"
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
          "id": "Akfx6rtMU+GjuFcCgON/bxjcyxivzXCjHPpMKJGJdcWM",
          "carrier": "VY",
          "origin": "PRG",
          "destination": "BCN",
          "basisCode": "VOWVY"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "Akfx6rtMU+GjuFcCgON/bxjcyxivzXCjHPpMKJGJdcWM",
          "segmentId": "Ghro4YizDveeUKTw"
         }
        ],
        "baseFareTotal": "EUR135.00",
        "saleFareTotal": "CZK3651",
        "saleTaxTotal": "CZK1349",
        "saleTotal": "CZK5000",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK758"
         }
        ],
        "fareCalculation": "PRG VY BCN 151.50VOWVY NUC 151.50 END ROE 0.891079 FARE EUR 135.00 EQU CZK 3651 XT 591CZ 758YQ",
        "latestTicketingTime": "2016-11-27T08:45-05:00",
        "ptc": "ADT"
       }
      ]
     }
    ]
   }
  }
  '

  prg_bru = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "szVHxisvlaZivauCU0PW2E",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "BRU",
       "city": "BRU",
       "name": "Brussels Airport"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "BRU",
       "name": "Brussels"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
      }
     ],
     "aircraft": [
      {
       "kind": "qpxexpress#aircraftData",
       "code": "319",
       "name": "Airbus A319"
      }
     ],
     "tax": [
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_F",
       "name": "OK YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "YR_I",
       "name": "SN YR surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_I",
       "name": "SN YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "OK",
       "name": "Czech Airlines a.s,. CSA"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "SN",
       "name": "SN Brussels Airlines"
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1973",
      "id": "5mJgIjYwyLBPZLI4fGAKdC001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 90,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 90,
          "flight": {
           "carrier": "OK",
           "number": "630"
          },
          "id": "GTWkHJRxfAPQDmfG",
          "cabin": "COACH",
          "bookingCode": "S",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LJJ+keWaMRNlXtRt",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T08:25+01:00",
            "departureTime": "2016-12-01T06:55+01:00",
            "origin": "PRG",
            "destination": "BRU",
            "originTerminal": "2",
            "duration": 90,
            "mileage": 432,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AFTo0LgT87J7w3miu2L/Nl1WQwpw+jMmXQhfN8+csZGY",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "BRU",
          "basisCode": "SECOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AFTo0LgT87J7w3miu2L/Nl1WQwpw+jMmXQhfN8+csZGY",
          "segmentId": "GTWkHJRxfAPQDmfG"
         }
        ],
        "baseFareTotal": "CZK300",
        "saleFareTotal": "CZK300",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK1973",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK BRU 12.45SECOK NUC 12.45 END ROE 24.0803 FARE CZK 300 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK5108",
      "id": "5mJgIjYwyLBPZLI4fGAKdC002",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 90,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 90,
          "flight": {
           "carrier": "OK",
           "number": "636"
          },
          "id": "GBSVncHDtjfGAf6A",
          "cabin": "COACH",
          "bookingCode": "A",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LX0M2k4D5LDT2e0N",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T19:10+01:00",
            "departureTime": "2016-12-01T17:40+01:00",
            "origin": "PRG",
            "destination": "BRU",
            "originTerminal": "2",
            "duration": 90,
            "mileage": 432,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AHTQb4n8SFbC34kI/XW5jjJDTLBO+yvWFj9vfypTqZn/",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "BRU",
          "basisCode": "AECOWOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AHTQb4n8SFbC34kI/XW5jjJDTLBO+yvWFj9vfypTqZn/",
          "segmentId": "GBSVncHDtjfGAf6A"
         }
        ],
        "baseFareTotal": "CZK3435",
        "saleFareTotal": "CZK3435",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK5108",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK BRU 142.64AECOWOK NUC 142.64 END ROE 24.0803 FARE CZK 3435 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK7820",
      "id": "5mJgIjYwyLBPZLI4fGAKdC003",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 85,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 85,
          "flight": {
           "carrier": "SN",
           "number": "2812"
          },
          "id": "G4LMG68VEWrCoTUq",
          "cabin": "COACH",
          "bookingCode": "M",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LQBZt723Njl+jnsZ",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T19:35+01:00",
            "departureTime": "2016-12-01T18:10+01:00",
            "origin": "PRG",
            "destination": "BRU",
            "originTerminal": "2",
            "duration": 85,
            "mileage": 432,
            "meal": "Snack or Brunch"
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
          "id": "A3mTOuc9CmoJKQYQ6LN0VuHrzvElpjmw0n9v6au8Z4+E",
          "carrier": "SN",
          "origin": "PRG",
          "destination": "BRU",
          "basisCode": "MFFXOWM0"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A3mTOuc9CmoJKQYQ6LN0VuHrzvElpjmw0n9v6au8Z4+E",
          "segmentId": "G4LMG68VEWrCoTUq"
         }
        ],
        "baseFareTotal": "CZK5714",
        "saleFareTotal": "CZK5714",
        "saleTaxTotal": "CZK2106",
        "saleTotal": "CZK7820",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK433"
         }
        ],
        "fareCalculation": "PRG SN BRU 237.28MFFXOWM0 NUC 237.28 END ROE 24.0803 FARE CZK 5714 XT 591CZ 1082YQ 433YR",
        "latestTicketingTime": "2016-12-01T12:09-05:00",
        "ptc": "ADT",
        "refundable": true
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK7820",
      "id": "5mJgIjYwyLBPZLI4fGAKdC005",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 90,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 90,
          "flight": {
           "carrier": "SN",
           "number": "2810"
          },
          "id": "GPst9t4MCw1iMv9j",
          "cabin": "COACH",
          "bookingCode": "M",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LVR1Au0RJIlfdKo4",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T13:05+01:00",
            "departureTime": "2016-12-01T11:35+01:00",
            "origin": "PRG",
            "destination": "BRU",
            "originTerminal": "2",
            "duration": 90,
            "mileage": 432,
            "meal": "Snack or Brunch"
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
          "id": "A3mTOuc9CmoJKQYQ6LN0VuHrzvElpjmw0n9v6au8Z4+E",
          "carrier": "SN",
          "origin": "PRG",
          "destination": "BRU",
          "basisCode": "MFFXOWM0"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A3mTOuc9CmoJKQYQ6LN0VuHrzvElpjmw0n9v6au8Z4+E",
          "segmentId": "GPst9t4MCw1iMv9j"
         }
        ],
        "baseFareTotal": "CZK5714",
        "saleFareTotal": "CZK5714",
        "saleTaxTotal": "CZK2106",
        "saleTotal": "CZK7820",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK433"
         }
        ],
        "fareCalculation": "PRG SN BRU 237.28MFFXOWM0 NUC 237.28 END ROE 24.0803 FARE CZK 5714 XT 591CZ 1082YQ 433YR",
        "latestTicketingTime": "2016-12-01T05:34-05:00",
        "ptc": "ADT",
        "refundable": true
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK7820",
      "id": "5mJgIjYwyLBPZLI4fGAKdC004",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 90,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 90,
          "flight": {
           "carrier": "SN",
           "number": "2816"
          },
          "id": "GDTCKJE3bOY5z6kW",
          "cabin": "COACH",
          "bookingCode": "M",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LBUvqbRQ1J-fyOX5",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T08:15+01:00",
            "departureTime": "2016-12-01T06:45+01:00",
            "origin": "PRG",
            "destination": "BRU",
            "originTerminal": "2",
            "duration": 90,
            "mileage": 432,
            "meal": "Breakfast"
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
          "id": "A3mTOuc9CmoJKQYQ6LN0VuHrzvElpjmw0n9v6au8Z4+E",
          "carrier": "SN",
          "origin": "PRG",
          "destination": "BRU",
          "basisCode": "MFFXOWM0"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A3mTOuc9CmoJKQYQ6LN0VuHrzvElpjmw0n9v6au8Z4+E",
          "segmentId": "GDTCKJE3bOY5z6kW"
         }
        ],
        "baseFareTotal": "CZK5714",
        "saleFareTotal": "CZK5714",
        "saleTaxTotal": "CZK2106",
        "saleTotal": "CZK7820",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK433"
         }
        ],
        "fareCalculation": "PRG SN BRU 237.28MFFXOWM0 NUC 237.28 END ROE 24.0803 FARE CZK 5714 XT 591CZ 1082YQ 433YR",
        "latestTicketingTime": "2016-12-01T00:44-05:00",
        "ptc": "ADT",
        "refundable": true
       }
      ]
     }
    ]
   }
  }
  '

  prg_amc = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "jK3n1zzQqPr0deyOy0PW2E",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "AMS",
       "city": "AMS",
       "name": "Amsterdam Schiphol Airport"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "AMS",
       "name": "Amsterdam"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
      }
     ],
     "aircraft": [
      {
       "kind": "qpxexpress#aircraftData",
       "code": "319",
       "name": "Airbus A319"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "73H",
       "name": "Boeing 737"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "E90",
       "name": "Embraer RJ-190"
      }
     ],
     "tax": [
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_F",
       "name": "QS YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "KL",
       "name": "KLM Royal Dutch Airlines"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "OK",
       "name": "Czech Airlines a.s,. CSA"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "QS",
       "name": "Travel Service, A.S."
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2004",
      "id": "KErTLFc9s0VNWQF5WKmnoU001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 95,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 95,
          "flight": {
           "carrier": "QS",
           "number": "8618"
          },
          "id": "Gx7MwVzo8FYxJlZo",
          "cabin": "COACH",
          "bookingCode": "J",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LzOEXLolI1JbOSrF",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T19:00+01:00",
            "departureTime": "2016-12-01T17:25+01:00",
            "origin": "PRG",
            "destination": "AMS",
            "originTerminal": "2",
            "duration": 95,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 437,
            "meal": "Food and Beverages for Purchase"
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
          "id": "Ay7yLVRdfwv1rYE+Ll/Y/N+UTDRPQtZHIK3et0EI",
          "carrier": "QS",
          "origin": "PRG",
          "destination": "AMS",
          "basisCode": "JQS"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "Ay7yLVRdfwv1rYE+Ll/Y/N+UTDRPQtZHIK3et0EI",
          "segmentId": "Gx7MwVzo8FYxJlZo"
         }
        ],
        "baseFareTotal": "CZK250",
        "saleFareTotal": "CZK250",
        "saleTaxTotal": "CZK1754",
        "saleTotal": "CZK2004",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1163"
         }
        ],
        "fareCalculation": "PRG QS AMS 10.38JQS NUC 10.38 END ROE 24.0803 FARE CZK 250 XT 591CZ 1163YQ",
        "latestTicketingTime": "2016-11-27T08:46-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2004",
      "id": "KErTLFc9s0VNWQF5WKmnoU002",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 100,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 100,
          "flight": {
           "carrier": "QS",
           "number": "8616"
          },
          "id": "G+7w9FRqv3OBQ5Rt",
          "cabin": "COACH",
          "bookingCode": "J",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LxzSwoi8N-OuBdz3",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T08:40+01:00",
            "departureTime": "2016-12-01T07:00+01:00",
            "origin": "PRG",
            "destination": "AMS",
            "originTerminal": "2",
            "duration": 100,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 437,
            "meal": "Food and Beverages for Purchase"
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
          "id": "Ay7yLVRdfwv1rYE+Ll/Y/N+UTDRPQtZHIK3et0EI",
          "carrier": "QS",
          "origin": "PRG",
          "destination": "AMS",
          "basisCode": "JQS"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "Ay7yLVRdfwv1rYE+Ll/Y/N+UTDRPQtZHIK3et0EI",
          "segmentId": "G+7w9FRqv3OBQ5Rt"
         }
        ],
        "baseFareTotal": "CZK250",
        "saleFareTotal": "CZK250",
        "saleTaxTotal": "CZK1754",
        "saleTotal": "CZK2004",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1163"
         }
        ],
        "fareCalculation": "PRG QS AMS 10.38JQS NUC 10.38 END ROE 24.0803 FARE CZK 250 XT 591CZ 1163YQ",
        "latestTicketingTime": "2016-11-27T08:46-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2388",
      "id": "KErTLFc9s0VNWQF5WKmnoU003",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 100,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 100,
          "flight": {
           "carrier": "OK",
           "number": "616"
          },
          "id": "G38t0LzjS2GbT4Zj",
          "cabin": "COACH",
          "bookingCode": "V",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LdJKAY3wPZoVL4Su",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T08:40+01:00",
            "departureTime": "2016-12-01T07:00+01:00",
            "origin": "PRG",
            "destination": "AMS",
            "originTerminal": "2",
            "duration": 100,
            "mileage": 437,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AQR62BenXgGd6Y7VQRPc9bT4JVSrklQSCNhvM2fYoCV/",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "AMS",
          "basisCode": "VECOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AQR62BenXgGd6Y7VQRPc9bT4JVSrklQSCNhvM2fYoCV/",
          "segmentId": "G38t0LzjS2GbT4Zj"
         }
        ],
        "baseFareTotal": "CZK715",
        "saleFareTotal": "CZK715",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK2388",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK AMS 29.69VECOK NUC 29.69 END ROE 24.0803 FARE CZK 715 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK7023",
      "id": "KErTLFc9s0VNWQF5WKmnoU004",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 95,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 95,
          "flight": {
           "carrier": "OK",
           "number": "618"
          },
          "id": "Ghk4RwwuazI9S67k",
          "cabin": "COACH",
          "bookingCode": "A",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LJhWZoIyr0t+zK39",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T19:00+01:00",
            "departureTime": "2016-12-01T17:25+01:00",
            "origin": "PRG",
            "destination": "AMS",
            "originTerminal": "2",
            "duration": 95,
            "mileage": 437,
            "meal": "Food and Beverages for Purchase"
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
          "id": "A+HXdtY/LHzFTMuhoB3j8q/zNt0emmPKIQvSmzFsHc3Y",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "AMS",
          "basisCode": "AECOWOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A+HXdtY/LHzFTMuhoB3j8q/zNt0emmPKIQvSmzFsHc3Y",
          "segmentId": "Ghk4RwwuazI9S67k"
         }
        ],
        "baseFareTotal": "CZK5350",
        "saleFareTotal": "CZK5350",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK7023",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK AMS 222.17AECOWOK NUC 222.17 END ROE 24.0803 FARE CZK 5350 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK8666",
      "id": "KErTLFc9s0VNWQF5WKmnoU005",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 95,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 95,
          "flight": {
           "carrier": "KL",
           "number": "1356"
          },
          "id": "GYV4f9XKwFhKzHf-",
          "cabin": "COACH",
          "bookingCode": "M",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LHBy9JqpFoCn4dUv",
            "aircraft": "73H",
            "arrivalTime": "2016-12-01T15:40+01:00",
            "departureTime": "2016-12-01T14:05+01:00",
            "origin": "PRG",
            "destination": "AMS",
            "originTerminal": "2",
            "duration": 95,
            "mileage": 437,
            "meal": "Snack or Brunch"
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
          "id": "AsMP+tIeg/Fq7WmDjPUTSoOnm6p/ujwRScQXSe2Pq4ts",
          "carrier": "KL",
          "origin": "PRG",
          "destination": "AMS",
          "basisCode": "MWKWCZ"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AsMP+tIeg/Fq7WmDjPUTSoOnm6p/ujwRScQXSe2Pq4ts",
          "segmentId": "GYV4f9XKwFhKzHf-"
         }
        ],
        "baseFareTotal": "CZK8075",
        "saleFareTotal": "CZK8075",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK8666",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG KL AMS 335.33MWKWCZ NUC 335.33 END ROE 24.0803 FARE CZK 8075 XT 591CZ",
        "latestTicketingTime": "2016-12-01T08:04-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK8666",
      "id": "KErTLFc9s0VNWQF5WKmnoU007",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 105,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 105,
          "flight": {
           "carrier": "KL",
           "number": "1352"
          },
          "id": "GK220RE1wvxw-mqZ",
          "cabin": "COACH",
          "bookingCode": "M",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LvgBhryadtk8pYiE",
            "aircraft": "E90",
            "arrivalTime": "2016-12-01T10:40+01:00",
            "departureTime": "2016-12-01T08:55+01:00",
            "origin": "PRG",
            "destination": "AMS",
            "originTerminal": "2",
            "duration": 105,
            "operatingDisclosure": "OPERATED BY KLM CITYHOPPER",
            "mileage": 437,
            "meal": "Snack or Brunch"
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
          "id": "AsMP+tIeg/Fq7WmDjPUTSoOnm6p/ujwRScQXSe2Pq4ts",
          "carrier": "KL",
          "origin": "PRG",
          "destination": "AMS",
          "basisCode": "MWKWCZ"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AsMP+tIeg/Fq7WmDjPUTSoOnm6p/ujwRScQXSe2Pq4ts",
          "segmentId": "GK220RE1wvxw-mqZ"
         }
        ],
        "baseFareTotal": "CZK8075",
        "saleFareTotal": "CZK8075",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK8666",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG KL AMS 335.33MWKWCZ NUC 335.33 END ROE 24.0803 FARE CZK 8075 XT 591CZ",
        "latestTicketingTime": "2016-12-01T02:54-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK8666",
      "id": "KErTLFc9s0VNWQF5WKmnoU006",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 100,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 100,
          "flight": {
           "carrier": "KL",
           "number": "1350"
          },
          "id": "GIjt3W6Ys5Tf6yu5",
          "cabin": "COACH",
          "bookingCode": "M",
          "bookingCodeCount": 2,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LBMSYLSG9LuYG605",
            "aircraft": "E90",
            "arrivalTime": "2016-12-01T08:15+01:00",
            "departureTime": "2016-12-01T06:35+01:00",
            "origin": "PRG",
            "destination": "AMS",
            "originTerminal": "2",
            "duration": 100,
            "operatingDisclosure": "OPERATED BY KLM CITYHOPPER",
            "mileage": 437,
            "meal": "Snack or Brunch"
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
          "id": "AsMP+tIeg/Fq7WmDjPUTSoOnm6p/ujwRScQXSe2Pq4ts",
          "carrier": "KL",
          "origin": "PRG",
          "destination": "AMS",
          "basisCode": "MWKWCZ"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AsMP+tIeg/Fq7WmDjPUTSoOnm6p/ujwRScQXSe2Pq4ts",
          "segmentId": "GIjt3W6Ys5Tf6yu5"
         }
        ],
        "baseFareTotal": "CZK8075",
        "saleFareTotal": "CZK8075",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK8666",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG KL AMS 335.33MWKWCZ NUC 335.33 END ROE 24.0803 FARE CZK 8075 XT 591CZ",
        "latestTicketingTime": "2016-12-01T00:34-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK10703",
      "id": "KErTLFc9s0VNWQF5WKmnoU008",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 100,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 100,
          "flight": {
           "carrier": "KL",
           "number": "1358"
          },
          "id": "GbqfVvYeHcp-Kwak",
          "cabin": "COACH",
          "bookingCode": "B",
          "bookingCodeCount": 5,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "L7aiphMIX7VC5dv1",
            "aircraft": "E90",
            "arrivalTime": "2016-12-01T20:00+01:00",
            "departureTime": "2016-12-01T18:20+01:00",
            "origin": "PRG",
            "destination": "AMS",
            "originTerminal": "2",
            "duration": 100,
            "operatingDisclosure": "OPERATED BY KLM CITYHOPPER",
            "mileage": 437,
            "meal": "Snack or Brunch"
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
          "id": "AK+WaI2oMMYP5t/9mHilMck8j5JKWXx+2AAGOOxq/wQQ",
          "carrier": "KL",
          "origin": "PRG",
          "destination": "AMS",
          "basisCode": "BWKWCZ"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AK+WaI2oMMYP5t/9mHilMck8j5JKWXx+2AAGOOxq/wQQ",
          "segmentId": "GbqfVvYeHcp-Kwak"
         }
        ],
        "baseFareTotal": "CZK10112",
        "saleFareTotal": "CZK10112",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK10703",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG KL AMS 419.92BWKWCZ NUC 419.92 END ROE 24.0803 FARE CZK 10112 XT 591CZ",
        "latestTicketingTime": "2016-12-01T12:19-05:00",
        "ptc": "ADT"
       }
      ]
     }
    ]
   }
  }
  '

  prg_mad = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "attapqWqqKAXjPtWU0PW2E",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "MAD",
       "city": "MAD",
       "name": "Madrid Adolfo Suarez-Barajas"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "MAD",
       "name": "Madrid"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
      }
     ],
     "aircraft": [
      {
       "kind": "qpxexpress#aircraftData",
       "code": "319",
       "name": "Airbus A319"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "738",
       "name": "Boeing 737"
      }
     ],
     "tax": [
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_F",
       "name": "OK YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "IB",
       "name": "Iberia Lineas Aereas de Espana S.A."
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "OK",
       "name": "Czech Airlines a.s,. CSA"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "QS",
       "name": "Travel Service, A.S."
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "UX",
       "name": "Air Europa Lineas Aereas, S.A."
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2004",
      "id": "dpYxRT0YQnMRoXi6EJazXD001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 185,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 185,
          "flight": {
           "carrier": "OK",
           "number": "700"
          },
          "id": "GNLEDQ9MtmxCxX9L",
          "cabin": "COACH",
          "bookingCode": "G",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "Lhfsi08syj2z7cKK",
            "aircraft": "738",
            "arrivalTime": "2016-12-01T14:35+01:00",
            "departureTime": "2016-12-01T11:30+01:00",
            "origin": "PRG",
            "destination": "MAD",
            "originTerminal": "2",
            "destinationTerminal": "4",
            "duration": 185,
            "mileage": 1086,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AfpUjXBOObw16bkPOq3jh8tFtMfbvpckPfnYSD2KxkIM",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "MAD",
          "basisCode": "GECOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AfpUjXBOObw16bkPOq3jh8tFtMfbvpckPfnYSD2KxkIM",
          "segmentId": "GNLEDQ9MtmxCxX9L"
         }
        ],
        "baseFareTotal": "CZK331",
        "saleFareTotal": "CZK331",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK2004",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK MAD 13.74GECOK NUC 13.74 END ROE 24.0803 FARE CZK 331 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2004",
      "id": "dpYxRT0YQnMRoXi6EJazXD002",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 185,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 185,
          "flight": {
           "carrier": "QS",
           "number": "8700"
          },
          "id": "GJjWmNQ6iG3nngZB",
          "cabin": "COACH",
          "bookingCode": "J",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LbMdk2D7mR09M0Mn",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T14:35+01:00",
            "departureTime": "2016-12-01T11:30+01:00",
            "origin": "PRG",
            "destination": "MAD",
            "originTerminal": "2",
            "destinationTerminal": "4",
            "duration": 185,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 1086,
            "meal": "Food and Beverages for Purchase"
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
          "id": "Ahsi10QYEEvpiOgDiL7IiF3uNWJL1SH5TJoMWzeo",
          "carrier": "QS",
          "origin": "PRG",
          "destination": "MAD",
          "basisCode": "JQS"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "Ahsi10QYEEvpiOgDiL7IiF3uNWJL1SH5TJoMWzeo",
          "segmentId": "GJjWmNQ6iG3nngZB"
         }
        ],
        "baseFareTotal": "CZK250",
        "saleFareTotal": "CZK250",
        "saleTaxTotal": "CZK1754",
        "saleTotal": "CZK2004",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1163"
         }
        ],
        "fareCalculation": "PRG QS MAD 10.38JQS NUC 10.38 END ROE 24.0803 FARE CZK 250 XT 591CZ 1163YQ",
        "latestTicketingTime": "2016-11-27T08:46-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2578",
      "id": "dpYxRT0YQnMRoXi6EJazXD003",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 185,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 185,
          "flight": {
           "carrier": "UX",
           "number": "3852"
          },
          "id": "GoXYDxIJ36ghcBK-",
          "cabin": "COACH",
          "bookingCode": "P",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LnLqr4WKNXz4W228",
            "aircraft": "738",
            "arrivalTime": "2016-12-01T14:35+01:00",
            "departureTime": "2016-12-01T11:30+01:00",
            "origin": "PRG",
            "destination": "MAD",
            "originTerminal": "2",
            "destinationTerminal": "4",
            "duration": 185,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 1086,
            "meal": "Snack or Brunch"
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
          "id": "AZeSr8m6+reAK1uiLUc3AJBZH/SWjfdIfdop1UMC40Wk",
          "carrier": "UX",
          "origin": "PRG",
          "destination": "MAD",
          "basisCode": "PFLXOW"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AZeSr8m6+reAK1uiLUc3AJBZH/SWjfdIfdop1UMC40Wk",
          "segmentId": "GoXYDxIJ36ghcBK-"
         }
        ],
        "baseFareTotal": "CZK1987",
        "saleFareTotal": "CZK1987",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK2578",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG UX MAD 82.51PFLXOW NUC 82.51 END ROE 24.0803 FARE CZK 1987 XT 591CZ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK3291",
      "id": "dpYxRT0YQnMRoXi6EJazXD004",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 185,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 185,
          "flight": {
           "carrier": "IB",
           "number": "7885"
          },
          "id": "GdBuW+I60sYlqL8s",
          "cabin": "COACH",
          "bookingCode": "O",
          "bookingCodeCount": 4,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LDRc49Z9J+9YK+08",
            "aircraft": "738",
            "arrivalTime": "2016-12-01T14:35+01:00",
            "departureTime": "2016-12-01T11:30+01:00",
            "origin": "PRG",
            "destination": "MAD",
            "originTerminal": "2",
            "destinationTerminal": "4",
            "duration": 185,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 1086
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
          "id": "Afio0lan1cg826/j+PQXTaFlY8WtE0EodtcHpP/oJTUc",
          "carrier": "IB",
          "origin": "PRG",
          "destination": "MAD",
          "basisCode": "ONNN0F"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "Afio0lan1cg826/j+PQXTaFlY8WtE0EodtcHpP/oJTUc",
          "segmentId": "GdBuW+I60sYlqL8s"
         }
        ],
        "baseFareTotal": "CZK2700",
        "saleFareTotal": "CZK2700",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK3291",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG IB MAD 112.12ONNN0F NUC 112.12 END ROE 24.0803 FARE CZK 2700 XT 591CZ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK3433",
      "id": "dpYxRT0YQnMRoXi6EJazXD005",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 175,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 175,
          "flight": {
           "carrier": "OK",
           "number": "4704"
          },
          "id": "GSYIA80Ix6S1Pw29",
          "cabin": "COACH",
          "bookingCode": "U",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "L4Zr6+fE+R7HLyS4",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T17:15+01:00",
            "departureTime": "2016-12-01T14:20+01:00",
            "origin": "PRG",
            "destination": "MAD",
            "originTerminal": "2",
            "destinationTerminal": "4",
            "duration": 175,
            "operatingDisclosure": "OPERATED BY IBERIA",
            "mileage": 1086,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AADL0cozq9CBcunk4PF16CVIdhr4A0+Tia6tfMlfivQE",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "MAD",
          "basisCode": "UECOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AADL0cozq9CBcunk4PF16CVIdhr4A0+Tia6tfMlfivQE",
          "segmentId": "GSYIA80Ix6S1Pw29"
         }
        ],
        "baseFareTotal": "CZK1760",
        "saleFareTotal": "CZK1760",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK3433",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK MAD 73.08UECOK NUC 73.08 END ROE 24.0803 FARE CZK 1760 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK3521",
      "id": "dpYxRT0YQnMRoXi6EJazXD006",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 175,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 175,
          "flight": {
           "carrier": "IB",
           "number": "3149"
          },
          "id": "GEVXxLxGFt9ayepc",
          "cabin": "COACH",
          "bookingCode": "Q",
          "bookingCodeCount": 7,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "Lb91YHHxfyGlEhRc",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T17:15+01:00",
            "departureTime": "2016-12-01T14:20+01:00",
            "origin": "PRG",
            "destination": "MAD",
            "originTerminal": "2",
            "destinationTerminal": "4",
            "duration": 175,
            "mileage": 1086,
            "meal": "Food and Beverages for Purchase"
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
          "id": "A/SvVJwjWd7Srv2CQJpMRKIbIR0MPTF8sWVF4KOcfWbg",
          "carrier": "IB",
          "origin": "PRG",
          "destination": "MAD",
          "basisCode": "QNNNOC"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A/SvVJwjWd7Srv2CQJpMRKIbIR0MPTF8sWVF4KOcfWbg",
          "segmentId": "GEVXxLxGFt9ayepc"
         }
        ],
        "baseFareTotal": "CZK2930",
        "saleFareTotal": "CZK2930",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK3521",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG IB MAD 121.67QNNNOC NUC 121.67 END ROE 24.0803 FARE CZK 2930 XT 591CZ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     }
    ]
   }
  }
  '

  prg_bud = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "0oMxeD3m3NE3RV2uQ0PW2F",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "BUD",
       "city": "BUD",
       "name": "Budapest Liszt Ferenc International"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "BUD",
       "name": "Budapest"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
      }
     ],
     "aircraft": [
      {
       "kind": "qpxexpress#aircraftData",
       "code": "AT4",
       "name": "ATR 42"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "AT7",
       "name": "ATR 72"
      }
     ],
     "tax": [
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_F",
       "name": "OK YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "OK",
       "name": "Czech Airlines a.s,. CSA"
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK10778",
      "id": "2U7buCg68C0Q2Ws0oHdWa5003",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 85,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 85,
          "flight": {
           "carrier": "OK",
           "number": "786"
          },
          "id": "GdEfR9bBVeUWoq4s",
          "cabin": "COACH",
          "bookingCode": "Y",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LMhCVfYAILTwbSFC",
            "aircraft": "AT7",
            "arrivalTime": "2016-12-01T08:45+01:00",
            "departureTime": "2016-12-01T07:20+01:00",
            "origin": "PRG",
            "destination": "BUD",
            "originTerminal": "2",
            "destinationTerminal": "2A",
            "duration": 85,
            "mileage": 292,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AWe7PVllMF8ir/6aVkjtsiWGYWwWzYLJc98A7zvLKHU6",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "BUD",
          "basisCode": "YFLXOWOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AWe7PVllMF8ir/6aVkjtsiWGYWwWzYLJc98A7zvLKHU6",
          "segmentId": "GdEfR9bBVeUWoq4s"
         }
        ],
        "baseFareTotal": "CZK9105",
        "saleFareTotal": "CZK9105",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK10778",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK BUD 378.10YFLXOWOK NUC 378.10 END ROE 24.0803 FARE CZK 9105 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT",
        "refundable": true
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK10778",
      "id": "2U7buCg68C0Q2Ws0oHdWa5002",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 85,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 85,
          "flight": {
           "carrier": "OK",
           "number": "788"
          },
          "id": "GWBPK1qH4BLbttpx",
          "cabin": "COACH",
          "bookingCode": "Y",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "Lq21y0AGQq6+bQNB",
            "aircraft": "AT7",
            "arrivalTime": "2016-12-01T19:20+01:00",
            "departureTime": "2016-12-01T17:55+01:00",
            "origin": "PRG",
            "destination": "BUD",
            "originTerminal": "2",
            "destinationTerminal": "2A",
            "duration": 85,
            "mileage": 292,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AWe7PVllMF8ir/6aVkjtsiWGYWwWzYLJc98A7zvLKHU6",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "BUD",
          "basisCode": "YFLXOWOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AWe7PVllMF8ir/6aVkjtsiWGYWwWzYLJc98A7zvLKHU6",
          "segmentId": "GWBPK1qH4BLbttpx"
         }
        ],
        "baseFareTotal": "CZK9105",
        "saleFareTotal": "CZK9105",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK10778",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK BUD 378.10YFLXOWOK NUC 378.10 END ROE 24.0803 FARE CZK 9105 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT",
        "refundable": true
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK10778",
      "id": "2U7buCg68C0Q2Ws0oHdWa5001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 85,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 85,
          "flight": {
           "carrier": "OK",
           "number": "790"
          },
          "id": "GlCtCpYNHDnKOBgJ",
          "cabin": "COACH",
          "bookingCode": "Y",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LwXESATbElVQED4X",
            "aircraft": "AT4",
            "arrivalTime": "2016-12-01T13:25+01:00",
            "departureTime": "2016-12-01T12:00+01:00",
            "origin": "PRG",
            "destination": "BUD",
            "originTerminal": "2",
            "destinationTerminal": "2A",
            "duration": 85,
            "mileage": 292,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AWe7PVllMF8ir/6aVkjtsiWGYWwWzYLJc98A7zvLKHU6",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "BUD",
          "basisCode": "YFLXOWOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AWe7PVllMF8ir/6aVkjtsiWGYWwWzYLJc98A7zvLKHU6",
          "segmentId": "GlCtCpYNHDnKOBgJ"
         }
        ],
        "baseFareTotal": "CZK9105",
        "saleFareTotal": "CZK9105",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK10778",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK BUD 378.10YFLXOWOK NUC 378.10 END ROE 24.0803 FARE CZK 9105 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT",
        "refundable": true
       }
      ]
     }
    ]
   }
  }
  '

  prg_ath = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "pe7MyD1HZX6tITI9c0PW2F",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "ATH",
       "city": "ATH",
       "name": "Athens Eleftherios Venizelos"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "ATH",
       "name": "Athens"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
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
       "id": "YQ_F",
       "name": "A3 YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "A3",
       "name": "Aegean Airlines"
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK5118",
      "id": "2i4zyXQkiE8TiTkpFZ1zJ9001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 150,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 150,
          "flight": {
           "carrier": "A3",
           "number": "865"
          },
          "id": "GA-kd+oj-cgbdcy4",
          "cabin": "COACH",
          "bookingCode": "W",
          "bookingCodeCount": 1,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LuyBHTwLUFTwE69r",
            "aircraft": "320",
            "arrivalTime": "2016-12-01T15:05+02:00",
            "departureTime": "2016-12-01T11:35+01:00",
            "origin": "PRG",
            "destination": "ATH",
            "originTerminal": "2",
            "duration": 150,
            "mileage": 966,
            "meal": "Hot Meal"
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
          "id": "ATLT8fUFC82ulCbUuesE3LMNx9frxeMU107z06u1aAak",
          "carrier": "A3",
          "origin": "PRG",
          "destination": "ATH",
          "basisCode": "W2A3N"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "ATLT8fUFC82ulCbUuesE3LMNx9frxeMU107z06u1aAak",
          "segmentId": "GA-kd+oj-cgbdcy4"
         }
        ],
        "baseFareTotal": "CZK4445",
        "saleFareTotal": "CZK4445",
        "saleTaxTotal": "CZK673",
        "saleTotal": "CZK5118",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK82"
         }
        ],
        "fareCalculation": "PRG A3 ATH Q42.64 M 141.94W2A3N NUC 184.58 END ROE 24.0803 FARE CZK 4445 XT 591CZ 82YQ",
        "latestTicketingTime": "2016-12-01T05:34-05:00",
        "ptc": "ADT",
        "refundable": true
       }
      ]
     }
    ]
   }
  }
  '

  prg_nce = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "Sa79W4zst3uUgYpln0PW2H",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "NCE",
       "city": "NCE",
       "name": "Nice Cote dAzur"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "NCE",
       "name": "Nice"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
      }
     ],
     "aircraft": [
      {
       "kind": "qpxexpress#aircraftData",
       "code": "319",
       "name": "Airbus A319"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "AT7",
       "name": "ATR 72"
      }
     ],
     "tax": [
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_F",
       "name": "QS YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "OK",
       "name": "Czech Airlines a.s,. CSA"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "QS",
       "name": "Travel Service, A.S."
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2304",
      "id": "VtoJM4ZzouNVRbKsfJFWw9001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 170,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 170,
          "flight": {
           "carrier": "QS",
           "number": "8744"
          },
          "id": "GjuUESXz9YWy0i2u",
          "cabin": "COACH",
          "bookingCode": "U",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LpvTtKypS1IXCmTA",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T14:10+01:00",
            "departureTime": "2016-12-01T11:20+01:00",
            "origin": "PRG",
            "destination": "NCE",
            "originTerminal": "2",
            "destinationTerminal": "2",
            "duration": 170,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 554,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AYzR4gbD9DEOFVmZ95f0t0T7zFnVRiQAAvBS/E3A",
          "carrier": "QS",
          "origin": "PRG",
          "destination": "NCE",
          "basisCode": "UQS"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AYzR4gbD9DEOFVmZ95f0t0T7zFnVRiQAAvBS/E3A",
          "segmentId": "GjuUESXz9YWy0i2u"
         }
        ],
        "baseFareTotal": "CZK550",
        "saleFareTotal": "CZK550",
        "saleTaxTotal": "CZK1754",
        "saleTotal": "CZK2304",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1163"
         }
        ],
        "fareCalculation": "PRG QS NCE 22.84UQS NUC 22.84 END ROE 24.0803 FARE CZK 550 XT 591CZ 1163YQ",
        "latestTicketingTime": "2016-11-27T08:49-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2578",
      "id": "VtoJM4ZzouNVRbKsfJFWw9002",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 170,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 170,
          "flight": {
           "carrier": "OK",
           "number": "744"
          },
          "id": "G6kbTlzTWDSIOIag",
          "cabin": "COACH",
          "bookingCode": "U",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LIm71o1h0qBqO6sL",
            "aircraft": "AT7",
            "arrivalTime": "2016-12-01T14:10+01:00",
            "departureTime": "2016-12-01T11:20+01:00",
            "origin": "PRG",
            "destination": "NCE",
            "originTerminal": "2",
            "destinationTerminal": "2",
            "duration": 170,
            "mileage": 554,
            "meal": "Food and Beverages for Purchase"
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
          "id": "ACNrWtIdUcpDKHcnXy/XTON/tjwCxwrjGXpIRmED4cog",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "NCE",
          "basisCode": "UECOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "ACNrWtIdUcpDKHcnXy/XTON/tjwCxwrjGXpIRmED4cog",
          "segmentId": "G6kbTlzTWDSIOIag"
         }
        ],
        "baseFareTotal": "CZK905",
        "saleFareTotal": "CZK905",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK2578",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK NCE 37.58UECOK NUC 37.58 END ROE 24.0803 FARE CZK 905 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     }
    ]
   }
  }
  '

  prg_fco = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "rGIgR8F2FFZmmzEPN0PW2I",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "FCO",
       "city": "ROM",
       "name": "Rome Leonardo da Vinci-Fiumicino"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "ROM",
       "name": "Rome"
      }
     ],
     "aircraft": [
      {
       "kind": "qpxexpress#aircraftData",
       "code": "319",
       "name": "Airbus A319"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "320",
       "name": "Airbus A320"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "32S",
       "name": "Airbus A320"
      }
     ],
     "tax": [
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_F",
       "name": "QS YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "YR_I",
       "name": "AZ YR surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "AZ",
       "name": "Alitalia Societa Aerea Italiana S.p"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "BA",
       "name": "British Airways"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "IB",
       "name": "Iberia Lineas Aereas de Espana S.A."
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "OK",
       "name": "Czech Airlines a.s,. CSA"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "QS",
       "name": "Travel Service, A.S."
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "VY",
       "name": "Vueling Airlines S.A."
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1943",
      "id": "Niz1cIkhVgTRisB2VtafVG002",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 110,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 110,
          "flight": {
           "carrier": "IB",
           "number": "5841"
          },
          "id": "GEgBqAI3jwGvYZVW",
          "cabin": "COACH",
          "bookingCode": "Q",
          "bookingCodeCount": 4,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LPrDNeQbE1unJin1",
            "aircraft": "320",
            "arrivalTime": "2016-12-01T17:30+01:00",
            "departureTime": "2016-12-01T15:40+01:00",
            "origin": "PRG",
            "destination": "FCO",
            "originTerminal": "2",
            "destinationTerminal": "3",
            "duration": 110,
            "operatingDisclosure": "OPERATED BY VUELING AIRLINES",
            "mileage": 581,
            "meal": "Food and Beverages for Purchase"
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
          "id": "A4TuSlqi6Vo6EneZqSptgJZJ/GeAYYnOVt+6aUAJgIDo",
          "carrier": "IB",
          "origin": "PRG",
          "destination": "ROM",
          "basisCode": "QOWNVY"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A4TuSlqi6Vo6EneZqSptgJZJ/GeAYYnOVt+6aUAJgIDo",
          "segmentId": "GEgBqAI3jwGvYZVW"
         }
        ],
        "baseFareTotal": "CZK1352",
        "saleFareTotal": "CZK1352",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK1943",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG IB ROM 56.14QOWNVY NUC 56.14 END ROE 24.0803 FARE CZK 1352 XT 591CZ",
        "latestTicketingTime": "2016-11-27T08:50-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK1943",
      "id": "Niz1cIkhVgTRisB2VtafVG001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 110,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 110,
          "flight": {
           "carrier": "VY",
           "number": "6161"
          },
          "id": "G04bsN-1DGdaQuM-",
          "cabin": "COACH",
          "bookingCode": "W",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LCOhk-osViIxmWXs",
            "aircraft": "320",
            "arrivalTime": "2016-12-01T17:30+01:00",
            "departureTime": "2016-12-01T15:40+01:00",
            "origin": "PRG",
            "destination": "FCO",
            "originTerminal": "2",
            "destinationTerminal": "3",
            "duration": 110,
            "mileage": 581,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AlqvTB0bDo+EHPjlcJd+45YhtBTY6K9OB1uQrZvKwU4E",
          "carrier": "VY",
          "origin": "PRG",
          "destination": "ROM",
          "basisCode": "WOWVY"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AlqvTB0bDo+EHPjlcJd+45YhtBTY6K9OB1uQrZvKwU4E",
          "segmentId": "G04bsN-1DGdaQuM-"
         }
        ],
        "baseFareTotal": "EUR50.00",
        "saleFareTotal": "CZK1352",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK1943",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG VY ROM 56.11WOWVY NUC 56.11 END ROE 0.891079 FARE EUR 50.00 EQU CZK 1352 XT 591CZ",
        "latestTicketingTime": "2016-11-27T08:50-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2004",
      "id": "Niz1cIkhVgTRisB2VtafVG003",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 115,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 115,
          "flight": {
           "carrier": "QS",
           "number": "8724"
          },
          "id": "GvtWFDewpblLmzar",
          "cabin": "COACH",
          "bookingCode": "J",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LgFJIhzhncrdnfjF",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T14:00+01:00",
            "departureTime": "2016-12-01T12:05+01:00",
            "origin": "PRG",
            "destination": "FCO",
            "originTerminal": "2",
            "destinationTerminal": "3",
            "duration": 115,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 581,
            "meal": "Food and Beverages for Purchase"
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
          "id": "ApYwrhrjZurpQom6p+7G5oLzHKCO2aRrzN3e5alU",
          "carrier": "QS",
          "origin": "PRG",
          "destination": "ROM",
          "basisCode": "JQS"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "ApYwrhrjZurpQom6p+7G5oLzHKCO2aRrzN3e5alU",
          "segmentId": "GvtWFDewpblLmzar"
         }
        ],
        "baseFareTotal": "CZK250",
        "saleFareTotal": "CZK250",
        "saleTaxTotal": "CZK1754",
        "saleTotal": "CZK2004",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1163"
         }
        ],
        "fareCalculation": "PRG QS ROM 10.38JQS NUC 10.38 END ROE 24.0803 FARE CZK 250 XT 591CZ 1163YQ",
        "latestTicketingTime": "2016-11-27T08:50-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2349",
      "id": "Niz1cIkhVgTRisB2VtafVG004",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 110,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 110,
          "flight": {
           "carrier": "BA",
           "number": "8127"
          },
          "id": "GMcnL721vBpYnvcI",
          "cabin": "COACH",
          "bookingCode": "Q",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LiTEUJyjslRhFB+c",
            "aircraft": "320",
            "arrivalTime": "2016-12-01T17:30+01:00",
            "departureTime": "2016-12-01T15:40+01:00",
            "origin": "PRG",
            "destination": "FCO",
            "originTerminal": "2",
            "destinationTerminal": "3",
            "duration": 110,
            "operatingDisclosure": "OPERATED BY VUELING AIRLINES",
            "mileage": 581,
            "meal": "Food and Beverages for Purchase"
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
          "id": "Ak8OpXBPf6XVJTujAndkostr3mK5JNyv8cL+SjVXyQL6",
          "carrier": "BA",
          "origin": "PRG",
          "destination": "ROM",
          "basisCode": "QOWVY"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "Ak8OpXBPf6XVJTujAndkostr3mK5JNyv8cL+SjVXyQL6",
          "segmentId": "GMcnL721vBpYnvcI"
         }
        ],
        "baseFareTotal": "EUR65.00",
        "saleFareTotal": "CZK1758",
        "saleTaxTotal": "CZK591",
        "saleTotal": "CZK2349",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG BA ROM 72.94QOWVY NUC 72.94 END ROE 0.891079 FARE EUR 65.00 EQU CZK 1758 XT 591CZ",
        "latestTicketingTime": "2016-11-26T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2578",
      "id": "Niz1cIkhVgTRisB2VtafVG005",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 115,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 115,
          "flight": {
           "carrier": "OK",
           "number": "724"
          },
          "id": "GIx54LECEWb8cWyz",
          "cabin": "COACH",
          "bookingCode": "U",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "Lsi9EzEm988cTNe4",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T14:00+01:00",
            "departureTime": "2016-12-01T12:05+01:00",
            "origin": "PRG",
            "destination": "FCO",
            "originTerminal": "2",
            "destinationTerminal": "3",
            "duration": 115,
            "mileage": 581,
            "meal": "Food and Beverages for Purchase"
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
          "id": "A06usXBN8P0Dba7aqEOihfqZNfmT1gPvrCpS5kSraMAM",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "ROM",
          "basisCode": "UECOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A06usXBN8P0Dba7aqEOihfqZNfmT1gPvrCpS5kSraMAM",
          "segmentId": "GIx54LECEWb8cWyz"
         }
        ],
        "baseFareTotal": "CZK905",
        "saleFareTotal": "CZK905",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK2578",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK ROM 37.58UECOK NUC 37.58 END ROE 24.0803 FARE CZK 905 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2760",
      "id": "Niz1cIkhVgTRisB2VtafVG006",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 115,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 115,
          "flight": {
           "carrier": "AZ",
           "number": "7545"
          },
          "id": "GpSmolPKNdIQ0vr5",
          "cabin": "COACH",
          "bookingCode": "S",
          "bookingCodeCount": 7,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "L9fdDb1YkW6KztLn",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T14:00+01:00",
            "departureTime": "2016-12-01T12:05+01:00",
            "origin": "PRG",
            "destination": "FCO",
            "originTerminal": "2",
            "destinationTerminal": "3",
            "duration": 115,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 581,
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
          "id": "APJbLQyw71Ogl92WE0WfiqOflMVeBiyMWxajFRtm797Y",
          "carrier": "AZ",
          "origin": "PRG",
          "destination": "ROM",
          "basisCode": "SSSOWCZ"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "APJbLQyw71Ogl92WE0WfiqOflMVeBiyMWxajFRtm797Y",
          "segmentId": "GpSmolPKNdIQ0vr5"
         }
        ],
        "baseFareTotal": "CZK1060",
        "saleFareTotal": "CZK1060",
        "saleTaxTotal": "CZK1700",
        "saleTotal": "CZK2760",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK1109"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG AZ ROM 44.01SSSOWCZ NUC 44.01 END ROE 24.0803 FARE CZK 1060 XT 591CZ 1109YR",
        "latestTicketingTime": "2016-12-01T06:04-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK3703",
      "id": "Niz1cIkhVgTRisB2VtafVG007",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 105,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 105,
          "flight": {
           "carrier": "OK",
           "number": "4742"
          },
          "id": "GB94TY7CQ51ZQU4Z",
          "cabin": "COACH",
          "bookingCode": "L",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "L2likH9qNKASQXLE",
            "aircraft": "320",
            "arrivalTime": "2016-12-01T18:55+01:00",
            "departureTime": "2016-12-01T17:10+01:00",
            "origin": "PRG",
            "destination": "FCO",
            "originTerminal": "2",
            "destinationTerminal": "1",
            "duration": 105,
            "operatingDisclosure": "OPERATED BY ALITALIA",
            "mileage": 581
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
          "id": "AR59CJgmClNJsxu8UtvE2D4wScLeWiLJWEDndIsQVW1w",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "ROM",
          "basisCode": "LECOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AR59CJgmClNJsxu8UtvE2D4wScLeWiLJWEDndIsQVW1w",
          "segmentId": "GB94TY7CQ51ZQU4Z"
         }
        ],
        "baseFareTotal": "CZK2030",
        "saleFareTotal": "CZK2030",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK3703",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK ROM 84.30LECOK NUC 84.30 END ROE 24.0803 FARE CZK 2030 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK4217",
      "id": "Niz1cIkhVgTRisB2VtafVG008",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 105,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 105,
          "flight": {
           "carrier": "AZ",
           "number": "513"
          },
          "id": "Gqe-NRvtPIM76qr6",
          "cabin": "COACH",
          "bookingCode": "T",
          "bookingCodeCount": 7,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LDUKEXMeGGodNloF",
            "aircraft": "32S",
            "arrivalTime": "2016-12-01T18:55+01:00",
            "departureTime": "2016-12-01T17:10+01:00",
            "origin": "PRG",
            "destination": "FCO",
            "originTerminal": "2",
            "destinationTerminal": "1",
            "duration": 105,
            "mileage": 581,
            "meal": "Snack or Brunch"
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
          "id": "AfdsYP5GTGXh2sJf93QFgxCO4UHkFL5z3+iGZe5QG19M",
          "carrier": "AZ",
          "origin": "PRG",
          "destination": "ROM",
          "basisCode": "TSXOWCZ"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AfdsYP5GTGXh2sJf93QFgxCO4UHkFL5z3+iGZe5QG19M",
          "segmentId": "Gqe-NRvtPIM76qr6"
         }
        ],
        "baseFareTotal": "CZK2517",
        "saleFareTotal": "CZK2517",
        "saleTaxTotal": "CZK1700",
        "saleTotal": "CZK4217",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK1109"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG AZ ROM 104.52TSXOWCZ NUC 104.52 END ROE 24.0803 FARE CZK 2517 XT 591CZ 1109YR",
        "latestTicketingTime": "2016-12-01T11:09-05:00",
        "ptc": "ADT"
       }
      ]
     }
    ]
   }
  }
  '

  prg_zrh = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "ehUMynKi6rInGfrZR0PW2J",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "ZRH",
       "city": "ZRH",
       "name": "Zurich Airport"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "ZRH",
       "name": "Zurich"
      }
     ],
     "aircraft": [
      {
       "kind": "qpxexpress#aircraftData",
       "code": "320",
       "name": "Airbus A320"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "CS1",
       "name": "Bombardier CS100"
      }
     ],
     "tax": [
      {
       "kind": "qpxexpress#taxData",
       "id": "YR_I",
       "name": "LX YR surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_I",
       "name": "LX YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "LX",
       "name": "SWISS"
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK7992",
      "id": "TpYLZ2FgfCJOgW8DZrcSs3002",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 85,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 85,
          "flight": {
           "carrier": "LX",
           "number": "1485"
          },
          "id": "GByHraKt6Vy5hb35",
          "cabin": "COACH",
          "bookingCode": "V",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "L7OxcrFFDs5CEIqE",
            "aircraft": "320",
            "arrivalTime": "2016-12-01T11:30+01:00",
            "departureTime": "2016-12-01T10:05+01:00",
            "origin": "PRG",
            "destination": "ZRH",
            "originTerminal": "2",
            "duration": 85,
            "operatingDisclosure": "OPERATED BY EDELWEISS AIR AG",
            "mileage": 317,
            "meal": "Snack or Brunch"
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
          "id": "AxkEHIgBEDSSdMIrnLKT4U5jUatYibD+dFFsTRM5vgUvAb/",
          "carrier": "LX",
          "origin": "PRG",
          "destination": "ZRH",
          "basisCode": "VCLSOW"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AxkEHIgBEDSSdMIrnLKT4U5jUatYibD+dFFsTRM5vgUvAb/",
          "segmentId": "GByHraKt6Vy5hb35"
         }
        ],
        "baseFareTotal": "CZK6292",
        "saleFareTotal": "CZK6292",
        "saleTaxTotal": "CZK1700",
        "saleTotal": "CZK7992",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK676"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK433"
         }
        ],
        "fareCalculation": "PRG LX ZRH 261.29VCLSOW NUC 261.29 END ROE 24.0803 FARE CZK 6292 XT 591CZ 676YQ 433YR",
        "latestTicketingTime": "2016-12-01T04:04-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK7992",
      "id": "TpYLZ2FgfCJOgW8DZrcSs3001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 75,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 75,
          "flight": {
           "carrier": "LX",
           "number": "1499"
          },
          "id": "GBgywTXU-IE6MZo-",
          "cabin": "COACH",
          "bookingCode": "V",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LT5jATrJu5ZPeDGS",
            "aircraft": "320",
            "arrivalTime": "2016-12-01T21:00+01:00",
            "departureTime": "2016-12-01T19:45+01:00",
            "origin": "PRG",
            "destination": "ZRH",
            "originTerminal": "2",
            "duration": 75,
            "mileage": 317,
            "meal": "Snack or Brunch"
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
          "id": "AxkEHIgBEDSSdMIrnLKT4U5jUatYibD+dFFsTRM5vgUvAb/",
          "carrier": "LX",
          "origin": "PRG",
          "destination": "ZRH",
          "basisCode": "VCLSOW"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AxkEHIgBEDSSdMIrnLKT4U5jUatYibD+dFFsTRM5vgUvAb/",
          "segmentId": "GBgywTXU-IE6MZo-"
         }
        ],
        "baseFareTotal": "CZK6292",
        "saleFareTotal": "CZK6292",
        "saleTaxTotal": "CZK1700",
        "saleTotal": "CZK7992",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK676"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK433"
         }
        ],
        "fareCalculation": "PRG LX ZRH 261.29VCLSOW NUC 261.29 END ROE 24.0803 FARE CZK 6292 XT 591CZ 676YQ 433YR",
        "latestTicketingTime": "2016-12-01T13:44-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK13232",
      "id": "TpYLZ2FgfCJOgW8DZrcSs3003",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 85,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 85,
          "flight": {
           "carrier": "LX",
           "number": "1487"
          },
          "id": "Gl31uybVcHyHN-wO",
          "cabin": "BUSINESS",
          "bookingCode": "D",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LGLGwFP675qHCSs8",
            "aircraft": "CS1",
            "arrivalTime": "2016-12-01T16:10+01:00",
            "departureTime": "2016-12-01T14:45+01:00",
            "origin": "PRG",
            "destination": "ZRH",
            "originTerminal": "2",
            "duration": 85,
            "operatingDisclosure": "OPERATED BY SWISS GLOBAL AIR LINES",
            "mileage": 317,
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
          "id": "AxP3jIgBCYNROYc31Bk7t40qg4YqWQL/Nz3BpgYYKiMvCmU",
          "carrier": "LX",
          "origin": "PRG",
          "destination": "ZRH",
          "basisCode": "DBUZOW"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AxP3jIgBCYNROYc31Bk7t40qg4YqWQL/Nz3BpgYYKiMvCmU",
          "segmentId": "Gl31uybVcHyHN-wO"
         }
        ],
        "baseFareTotal": "CZK11045",
        "saleFareTotal": "CZK11045",
        "saleTaxTotal": "CZK2187",
        "saleTotal": "CZK13232",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1163"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK433"
         }
        ],
        "fareCalculation": "PRG LX ZRH 458.67DBUZOW NUC 458.67 END ROE 24.0803 FARE CZK 11045 XT 591CZ 1163YQ 433YR",
        "latestTicketingTime": "2016-12-01T08:44-05:00",
        "ptc": "ADT",
        "refundable": true
       }
      ]
     }
    ]
   }
  }
  '

  prg_vie = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "y5vR38JL4KeVzIqCh0PW2J",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "VIE",
       "city": "VIE",
       "name": "Vienna International"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "VIE",
       "name": "Vienna"
      }
     ],
     "aircraft": [
      {
       "kind": "qpxexpress#aircraftData",
       "code": "100",
       "name": "Fokker 100"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "DH4",
       "name": "De Havilland-Bombardier Dash-8"
      }
     ],
     "tax": [
      {
       "kind": "qpxexpress#taxData",
       "id": "YR_I",
       "name": "OS YR surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_I",
       "name": "OS YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "OS",
       "name": "Austrian"
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK16232",
      "id": "1IbTwltq86DPUay4hT6zOC003",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 55,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 55,
          "flight": {
           "carrier": "OS",
           "number": "708"
          },
          "id": "GJ5bTbeNHAOIZRqp",
          "cabin": "COACH",
          "bookingCode": "Y",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LYROcpPw+d4SCoHN",
            "aircraft": "DH4",
            "arrivalTime": "2016-12-01T16:20+01:00",
            "departureTime": "2016-12-01T15:25+01:00",
            "origin": "PRG",
            "destination": "VIE",
            "originTerminal": "2",
            "duration": 55,
            "mileage": 172,
            "meal": "Refreshments"
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
          "id": "AoJb/wLtan0UBdgEhcNHYbQNQh1N+CwvWaHUjhMRNm+s",
          "carrier": "OS",
          "origin": "PRG",
          "destination": "VIE",
          "basisCode": "Y10CLS9"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AoJb/wLtan0UBdgEhcNHYbQNQh1N+CwvWaHUjhMRNm+s",
          "segmentId": "GJ5bTbeNHAOIZRqp"
         }
        ],
        "baseFareTotal": "CZK14126",
        "saleFareTotal": "CZK14126",
        "saleTaxTotal": "CZK2106",
        "saleTotal": "CZK16232",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK433"
         }
        ],
        "fareCalculation": "PRG OS VIE 586.62Y10CLS9 NUC 586.62 END ROE 24.0803 FARE CZK 14126 XT 591CZ 1082YQ 433YR",
        "latestTicketingTime": "2016-11-29T15:25-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK16232",
      "id": "1IbTwltq86DPUay4hT6zOC002",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 50,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 50,
          "flight": {
           "carrier": "OS",
           "number": "710"
          },
          "id": "GzoFYfw-8wWuDi9X",
          "cabin": "COACH",
          "bookingCode": "Y",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LKYsUi0t3v0YDlJh",
            "aircraft": "100",
            "arrivalTime": "2016-12-01T19:40+01:00",
            "departureTime": "2016-12-01T18:50+01:00",
            "origin": "PRG",
            "destination": "VIE",
            "originTerminal": "2",
            "duration": 50,
            "mileage": 172,
            "meal": "Refreshments"
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
          "id": "AoJb/wLtan0UBdgEhcNHYbQNQh1N+CwvWaHUjhMRNm+s",
          "carrier": "OS",
          "origin": "PRG",
          "destination": "VIE",
          "basisCode": "Y10CLS9"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AoJb/wLtan0UBdgEhcNHYbQNQh1N+CwvWaHUjhMRNm+s",
          "segmentId": "GzoFYfw-8wWuDi9X"
         }
        ],
        "baseFareTotal": "CZK14126",
        "saleFareTotal": "CZK14126",
        "saleTaxTotal": "CZK2106",
        "saleTotal": "CZK16232",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK433"
         }
        ],
        "fareCalculation": "PRG OS VIE 586.62Y10CLS9 NUC 586.62 END ROE 24.0803 FARE CZK 14126 XT 591CZ 1082YQ 433YR",
        "latestTicketingTime": "2016-11-29T18:50-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK16232",
      "id": "1IbTwltq86DPUay4hT6zOC001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 45,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 45,
          "flight": {
           "carrier": "OS",
           "number": "712"
          },
          "id": "Gqiegls7NoUt3eoi",
          "cabin": "COACH",
          "bookingCode": "Y",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "Lcr66yLucCZaexob",
            "aircraft": "DH4",
            "arrivalTime": "2016-12-01T22:15+01:00",
            "departureTime": "2016-12-01T21:30+01:00",
            "origin": "PRG",
            "destination": "VIE",
            "originTerminal": "2",
            "duration": 45,
            "mileage": 172,
            "meal": "Refreshments"
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
          "id": "AoJb/wLtan0UBdgEhcNHYbQNQh1N+CwvWaHUjhMRNm+s",
          "carrier": "OS",
          "origin": "PRG",
          "destination": "VIE",
          "basisCode": "Y10CLS9"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AoJb/wLtan0UBdgEhcNHYbQNQh1N+CwvWaHUjhMRNm+s",
          "segmentId": "Gqiegls7NoUt3eoi"
         }
        ],
        "baseFareTotal": "CZK14126",
        "saleFareTotal": "CZK14126",
        "saleTaxTotal": "CZK2106",
        "saleTotal": "CZK16232",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK433"
         }
        ],
        "fareCalculation": "PRG OS VIE 586.62Y10CLS9 NUC 586.62 END ROE 24.0803 FARE CZK 14126 XT 591CZ 1082YQ 433YR",
        "latestTicketingTime": "2016-11-29T21:30-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK16232",
      "id": "1IbTwltq86DPUay4hT6zOC005",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 60,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 60,
          "flight": {
           "carrier": "OS",
           "number": "704"
          },
          "id": "Gco-92KCXkuPU3Kp",
          "cabin": "COACH",
          "bookingCode": "Y",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LDdk1U2n1D2BTOC-",
            "aircraft": "100",
            "arrivalTime": "2016-12-01T09:15+01:00",
            "departureTime": "2016-12-01T08:15+01:00",
            "origin": "PRG",
            "destination": "VIE",
            "originTerminal": "2",
            "duration": 60,
            "mileage": 172,
            "meal": "Refreshments"
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
          "id": "AoJb/wLtan0UBdgEhcNHYbQNQh1N+CwvWaHUjhMRNm+s",
          "carrier": "OS",
          "origin": "PRG",
          "destination": "VIE",
          "basisCode": "Y10CLS9"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AoJb/wLtan0UBdgEhcNHYbQNQh1N+CwvWaHUjhMRNm+s",
          "segmentId": "Gco-92KCXkuPU3Kp"
         }
        ],
        "baseFareTotal": "CZK14126",
        "saleFareTotal": "CZK14126",
        "saleTaxTotal": "CZK2106",
        "saleTotal": "CZK16232",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK433"
         }
        ],
        "fareCalculation": "PRG OS VIE 586.62Y10CLS9 NUC 586.62 END ROE 24.0803 FARE CZK 14126 XT 591CZ 1082YQ 433YR",
        "latestTicketingTime": "2016-11-29T08:15-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK16232",
      "id": "1IbTwltq86DPUay4hT6zOC004",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 55,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 55,
          "flight": {
           "carrier": "OS",
           "number": "706"
          },
          "id": "Ga+lYO8d3n75-773",
          "cabin": "COACH",
          "bookingCode": "Y",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LxlF0ApDt1eUQTPB",
            "aircraft": "DH4",
            "arrivalTime": "2016-12-01T12:15+01:00",
            "departureTime": "2016-12-01T11:20+01:00",
            "origin": "PRG",
            "destination": "VIE",
            "originTerminal": "2",
            "duration": 55,
            "mileage": 172,
            "meal": "Refreshments"
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
          "id": "AoJb/wLtan0UBdgEhcNHYbQNQh1N+CwvWaHUjhMRNm+s",
          "carrier": "OS",
          "origin": "PRG",
          "destination": "VIE",
          "basisCode": "Y10CLS9"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AoJb/wLtan0UBdgEhcNHYbQNQh1N+CwvWaHUjhMRNm+s",
          "segmentId": "Ga+lYO8d3n75-773"
         }
        ],
        "baseFareTotal": "CZK14126",
        "saleFareTotal": "CZK14126",
        "saleTaxTotal": "CZK2106",
        "saleTotal": "CZK16232",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK433"
         }
        ],
        "fareCalculation": "PRG OS VIE 586.62Y10CLS9 NUC 586.62 END ROE 24.0803 FARE CZK 14126 XT 591CZ 1082YQ 433YR",
        "latestTicketingTime": "2016-11-29T11:20-05:00",
        "ptc": "ADT"
       }
      ]
     }
    ]
   }
  }
  '

  prg_mxp = '{
   "kind": "qpxExpress#tripsSearch",
   "trips": {
    "kind": "qpxexpress#tripOptions",
    "requestId": "5LiH6vP3QHnrReeiC0PW2K",
    "data": {
     "kind": "qpxexpress#data",
     "airport": [
      {
       "kind": "qpxexpress#airportData",
       "code": "MXP",
       "city": "MIL",
       "name": "Milan Malpensa"
      },
      {
       "kind": "qpxexpress#airportData",
       "code": "PRG",
       "city": "PRG",
       "name": "Prague Ruzyne"
      }
     ],
     "city": [
      {
       "kind": "qpxexpress#cityData",
       "code": "MIL",
       "name": "Milan"
      },
      {
       "kind": "qpxexpress#cityData",
       "code": "PRG",
       "name": "Prague"
      }
     ],
     "aircraft": [
      {
       "kind": "qpxexpress#aircraftData",
       "code": "319",
       "name": "Airbus A319"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "AT7",
       "name": "ATR 72"
      },
      {
       "kind": "qpxexpress#aircraftData",
       "code": "ATR",
       "name": "ATR 42/72"
      }
     ],
     "tax": [
      {
       "kind": "qpxexpress#taxData",
       "id": "YQ_F",
       "name": "QS YQ surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "YR_I",
       "name": "AZ YR surcharge"
      },
      {
       "kind": "qpxexpress#taxData",
       "id": "CZ_001",
       "name": "Czech Republic Embarkation Tax"
      }
     ],
     "carrier": [
      {
       "kind": "qpxexpress#carrierData",
       "code": "AZ",
       "name": "Alitalia Societa Aerea Italiana S.p"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "OK",
       "name": "Czech Airlines a.s,. CSA"
      },
      {
       "kind": "qpxexpress#carrierData",
       "code": "QS",
       "name": "Travel Service, A.S."
      }
     ]
    },
    "tripOption": [
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2004",
      "id": "PFLaEwM0DgHRQrc7ar2mPV003",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 120,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 120,
          "flight": {
           "carrier": "QS",
           "number": "8722"
          },
          "id": "G+7tJfwlHsEI8IiD",
          "cabin": "COACH",
          "bookingCode": "J",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LCWA3llpnkI5NEol",
            "aircraft": "AT7",
            "arrivalTime": "2016-12-01T21:00+01:00",
            "departureTime": "2016-12-01T19:00+01:00",
            "origin": "PRG",
            "destination": "MXP",
            "originTerminal": "2",
            "destinationTerminal": "1",
            "duration": 120,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 401,
            "meal": "Food and Beverages for Purchase"
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
          "id": "Aq8rkKM0Idf/zwq3XW2mGjEfeuy4ssf3ewxoX92Q",
          "carrier": "QS",
          "origin": "PRG",
          "destination": "MIL",
          "basisCode": "JQS"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "Aq8rkKM0Idf/zwq3XW2mGjEfeuy4ssf3ewxoX92Q",
          "segmentId": "G+7tJfwlHsEI8IiD"
         }
        ],
        "baseFareTotal": "CZK250",
        "saleFareTotal": "CZK250",
        "saleTaxTotal": "CZK1754",
        "saleTotal": "CZK2004",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1163"
         }
        ],
        "fareCalculation": "PRG QS MIL 10.38JQS NUC 10.38 END ROE 24.0803 FARE CZK 250 XT 591CZ 1163YQ",
        "latestTicketingTime": "2016-11-27T08:52-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2004",
      "id": "PFLaEwM0DgHRQrc7ar2mPV002",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 120,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 120,
          "flight": {
           "carrier": "QS",
           "number": "8718"
          },
          "id": "GeaPyuhIzCVLru+V",
          "cabin": "COACH",
          "bookingCode": "J",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LB-76kKfDPHwWPCj",
            "aircraft": "AT7",
            "arrivalTime": "2016-12-01T09:00+01:00",
            "departureTime": "2016-12-01T07:00+01:00",
            "origin": "PRG",
            "destination": "MXP",
            "originTerminal": "2",
            "destinationTerminal": "1",
            "duration": 120,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 401,
            "meal": "Food and Beverages for Purchase"
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
          "id": "Aq8rkKM0Idf/zwq3XW2mGjEfeuy4ssf3ewxoX92Q",
          "carrier": "QS",
          "origin": "PRG",
          "destination": "MIL",
          "basisCode": "JQS"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "Aq8rkKM0Idf/zwq3XW2mGjEfeuy4ssf3ewxoX92Q",
          "segmentId": "GeaPyuhIzCVLru+V"
         }
        ],
        "baseFareTotal": "CZK250",
        "saleFareTotal": "CZK250",
        "saleTaxTotal": "CZK1754",
        "saleTotal": "CZK2004",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1163"
         }
        ],
        "fareCalculation": "PRG QS MIL 10.38JQS NUC 10.38 END ROE 24.0803 FARE CZK 250 XT 591CZ 1163YQ",
        "latestTicketingTime": "2016-11-27T08:52-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2061",
      "id": "PFLaEwM0DgHRQrc7ar2mPV004",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 120,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 120,
          "flight": {
           "carrier": "OK",
           "number": "718"
          },
          "id": "Grhmuud5ATjcyTxb",
          "cabin": "COACH",
          "bookingCode": "N",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "LyiUcpw1yMIm5Se0",
            "aircraft": "AT7",
            "arrivalTime": "2016-12-01T09:00+01:00",
            "departureTime": "2016-12-01T07:00+01:00",
            "origin": "PRG",
            "destination": "MXP",
            "originTerminal": "2",
            "destinationTerminal": "1",
            "duration": 120,
            "mileage": 401,
            "meal": "Food and Beverages for Purchase"
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
          "id": "AM7zBB0+rOETFwRlHOQRadc2ukde+CDvjLLDG5Dd5cQw",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "MIL",
          "basisCode": "NECOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "AM7zBB0+rOETFwRlHOQRadc2ukde+CDvjLLDG5Dd5cQw",
          "segmentId": "Grhmuud5ATjcyTxb"
         }
        ],
        "baseFareTotal": "CZK550",
        "saleFareTotal": "CZK550",
        "saleTaxTotal": "CZK1511",
        "saleTotal": "CZK2061",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK920"
         }
        ],
        "fareCalculation": "PRG OK MIL 22.84NECOK NUC 22.84 END ROE 24.0803 FARE CZK 550 XT 591CZ 920YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2285",
      "id": "PFLaEwM0DgHRQrc7ar2mPV001",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 90,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 90,
          "flight": {
           "carrier": "AZ",
           "number": "7541"
          },
          "id": "GqzOoxnPWBpiE0B0",
          "cabin": "COACH",
          "bookingCode": "Q",
          "bookingCodeCount": 7,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "L0ML8R1q45x+c-yt",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T08:30+01:00",
            "departureTime": "2016-12-01T07:00+01:00",
            "origin": "PRG",
            "destination": "MXP",
            "originTerminal": "2",
            "destinationTerminal": "1",
            "duration": 90,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 401,
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
          "id": "A61xYRyjCxfnCzYulfV8z3Vwo2xyQkZWZQADGKg4HnJg",
          "carrier": "AZ",
          "origin": "PRG",
          "destination": "MIL",
          "basisCode": "QSPOWCZ"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A61xYRyjCxfnCzYulfV8z3Vwo2xyQkZWZQADGKg4HnJg",
          "segmentId": "GqzOoxnPWBpiE0B0"
         }
        ],
        "baseFareTotal": "CZK585",
        "saleFareTotal": "CZK585",
        "saleTaxTotal": "CZK1700",
        "saleTotal": "CZK2285",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK1109"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG AZ MIL 24.29QSPOWCZ NUC 24.29 END ROE 24.0803 FARE CZK 585 XT 591CZ 1109YR",
        "latestTicketingTime": "2016-12-01T00:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK2858",
      "id": "PFLaEwM0DgHRQrc7ar2mPV005",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 120,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 120,
          "flight": {
           "carrier": "OK",
           "number": "722"
          },
          "id": "G04EN-rplcHGMdQd",
          "cabin": "COACH",
          "bookingCode": "Q",
          "bookingCodeCount": 9,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "L6iE6TG2hfb1e30w",
            "aircraft": "ATR",
            "arrivalTime": "2016-12-01T21:00+01:00",
            "departureTime": "2016-12-01T19:00+01:00",
            "origin": "PRG",
            "destination": "MXP",
            "originTerminal": "2",
            "destinationTerminal": "1",
            "duration": 120,
            "mileage": 401,
            "meal": "Food and Beverages for Purchase"
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
          "id": "A8GCCHhRIpcur1lS1rVYZmBl2Mu+hK45yqfRFK+YH7RU",
          "carrier": "OK",
          "origin": "PRG",
          "destination": "MIL",
          "basisCode": "QECOK"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A8GCCHhRIpcur1lS1rVYZmBl2Mu+hK45yqfRFK+YH7RU",
          "segmentId": "G04EN-rplcHGMdQd"
         }
        ],
        "baseFareTotal": "CZK1185",
        "saleFareTotal": "CZK1185",
        "saleTaxTotal": "CZK1673",
        "saleTotal": "CZK2858",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YQ_F",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YQ",
          "salePrice": "CZK1082"
         }
        ],
        "fareCalculation": "PRG OK MIL 49.21QECOK NUC 49.21 END ROE 24.0803 FARE CZK 1185 XT 591CZ 1082YQ",
        "latestTicketingTime": "2016-11-27T23:59-05:00",
        "ptc": "ADT"
       }
      ]
     },
     {
      "kind": "qpxexpress#tripOption",
      "saleTotal": "CZK3428",
      "id": "PFLaEwM0DgHRQrc7ar2mPV006",
      "slice": [
       {
        "kind": "qpxexpress#sliceInfo",
        "duration": 90,
        "segment": [
         {
          "kind": "qpxexpress#segmentInfo",
          "duration": 90,
          "flight": {
           "carrier": "AZ",
           "number": "7543"
          },
          "id": "GlbjM0o5lDkpvIJ7",
          "cabin": "COACH",
          "bookingCode": "N",
          "bookingCodeCount": 7,
          "marriedSegmentGroup": "0",
          "leg": [
           {
            "kind": "qpxexpress#legInfo",
            "id": "L+jkgcDNOM7NTgAF",
            "aircraft": "319",
            "arrivalTime": "2016-12-01T20:30+01:00",
            "departureTime": "2016-12-01T19:00+01:00",
            "origin": "PRG",
            "destination": "MXP",
            "originTerminal": "2",
            "destinationTerminal": "1",
            "duration": 90,
            "operatingDisclosure": "OPERATED BY CZECH AIRLINES",
            "mileage": 401,
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
          "id": "A0paNwLv0xXDQL86bMuOVRrWBjHlAeRATlgDnBgqihEA",
          "carrier": "AZ",
          "origin": "PRG",
          "destination": "MIL",
          "basisCode": "NSSOWCZ"
         }
        ],
        "segmentPricing": [
         {
          "kind": "qpxexpress#segmentPricing",
          "fareId": "A0paNwLv0xXDQL86bMuOVRrWBjHlAeRATlgDnBgqihEA",
          "segmentId": "GlbjM0o5lDkpvIJ7"
         }
        ],
        "baseFareTotal": "CZK1728",
        "saleFareTotal": "CZK1728",
        "saleTaxTotal": "CZK1700",
        "saleTotal": "CZK3428",
        "passengers": {
         "kind": "qpxexpress#passengerCounts",
         "adultCount": 1
        },
        "tax": [
         {
          "kind": "qpxexpress#taxInfo",
          "id": "YR_I",
          "chargeType": "CARRIER_SURCHARGE",
          "code": "YR",
          "salePrice": "CZK1109"
         },
         {
          "kind": "qpxexpress#taxInfo",
          "id": "CZ_001",
          "chargeType": "GOVERNMENT",
          "code": "CZ",
          "country": "CZ",
          "salePrice": "CZK591"
         }
        ],
        "fareCalculation": "PRG AZ MIL 71.75NSSOWCZ NUC 71.75 END ROE 24.0803 FARE CZK 1728 XT 591CZ 1109YR",
        "latestTicketingTime": "2016-12-01T12:59-05:00",
        "ptc": "ADT"
       }
      ]
     }
    ]
   }
  }
  '

  FROM_ORIGIN2 = [prg_txl, prg_lhr, prg_lgw, prg_cdg, prg_bcn, prg_bru, prg_amc, prg_mad, prg_bud, prg_ath, prg_nce, prg_fco, prg_zrh, prg_vie, prg_mxp]

end
