require 'json'
require_relative 'secret'
require 'rest-client'

# REQUEST
# GET "https://api.sandbox.amadeus.com/v1.2/flights/inspiration-search?apikey=d5pVrZJnTXLofPj1BtOShfWQsAaKXgMt&origin=PAR&departure_date=2016-11-30&one-way=true&direct=true"

#RESPONSE
from_par_json = '{
  "origin": "PAR",
  "currency": "EUR",
  "results": [
    {
      "destination": "OPO",
      "departure_date": "2016-11-30",
      "price": "46.86",
      "airline": "ZI"
    },
    {
      "destination": "LIS",
      "departure_date": "2016-11-30",
      "price": "46.86",
      "airline": "TP"
    },
    {
      "destination": "GLA",
      "departure_date": "2016-11-30",
      "price": "49.00",
      "airline": "AF"
    },
    {
      "destination": "VCE",
      "departure_date": "2016-11-30",
      "price": "55.10",
      "airline": "VY"
    },
    {
      "destination": "LON",
      "departure_date": "2016-11-30",
      "price": "61.00",
      "airline": "VY"
    },
    {
      "destination": "CPH",
      "departure_date": "2016-11-30",
      "price": "75.86",
      "airline": "DY"
    },
    {
      "destination": "SVQ",
      "departure_date": "2016-11-30",
      "price": "76.10",
      "airline": "IB"
    },
    {
      "destination": "MAD",
      "departure_date": "2016-11-30",
      "price": "76.86",
      "airline": "UX"
    },
    {
      "destination": "MIL",
      "departure_date": "2016-11-30",
      "price": "85.86",
      "airline": "VY"
    },
    {
      "destination": "BCN",
      "departure_date": "2016-11-30",
      "price": "85.86",
      "airline": "VY"
    },
    {
      "destination": "BRU",
      "departure_date": "2016-11-30",
      "price": "86.00",
      "airline": "9B"
    },
    {
      "destination": "OSL",
      "departure_date": "2016-11-30",
      "price": "86.86",
      "airline": "DY"
    },
    {
      "destination": "BUH",
      "departure_date": "2016-11-30",
      "price": "93.47",
      "airline": "0B"
    },
    {
      "destination": "BHX",
      "departure_date": "2016-11-30",
      "price": "95.00",
      "airline": "BE"
    },
    {
      "destination": "FLR",
      "departure_date": "2016-11-30",
      "price": "95.86",
      "airline": "VY"
    },
    {
      "destination": "TUN",
      "departure_date": "2016-11-30",
      "price": "97.26",
      "airline": "TU"
    },
    {
      "destination": "MAN",
      "departure_date": "2016-11-30",
      "price": "99.00",
      "airline": "BE"
    },
    {
      "destination": "VIE",
      "departure_date": "2016-11-30",
      "price": "99.10",
      "airline": "AB"
    },
    {
      "destination": "BER",
      "departure_date": "2016-11-30",
      "price": "99.86",
      "airline": "AB"
    },
    {
      "destination": "RBA",
      "departure_date": "2016-11-30",
      "price": "100.52",
      "airline": "TB"
    },
    {
      "destination": "IEV",
      "departure_date": "2016-11-30",
      "price": "101.09",
      "airline": "PS"
    },
    {
      "destination": "EDI",
      "departure_date": "2016-11-30",
      "price": "115.00",
      "airline": "BE"
    },
    {
      "destination": "ALC",
      "departure_date": "2016-11-30",
      "price": "115.86",
      "airline": "IB"
    },
    {
      "destination": "ROM",
      "departure_date": "2016-11-30",
      "price": "115.86",
      "airline": "IB"
    },
    {
      "destination": "NCL",
      "departure_date": "2016-11-30",
      "price": "125.00",
      "airline": "BE"
    },
    {
      "destination": "PRG",
      "departure_date": "2016-11-30",
      "price": "133.10",
      "airline": "OK"
    },
    {
      "destination": "HAM",
      "departure_date": "2016-11-30",
      "price": "142.16",
      "airline": "4U"
    },
    {
      "destination": "AGP",
      "departure_date": "2016-11-30",
      "price": "143.10",
      "airline": "UX"
    },
    {
      "destination": "HEL",
      "departure_date": "2016-11-30",
      "price": "144.86",
      "airline": "D8"
    },
    {
      "destination": "RAK",
      "departure_date": "2016-11-30",
      "price": "145.52",
      "airline": "AT"
    },
    {
      "destination": "MRS",
      "departure_date": "2016-11-30",
      "price": "149.75",
      "airline": "AF"
    },
    {
      "destination": "ZAG",
      "departure_date": "2016-11-30",
      "price": "152.00",
      "airline": "OU"
    },
    {
      "destination": "SOF",
      "departure_date": "2016-11-30",
      "price": "154.00",
      "airline": "FB"
    },
    {
      "destination": "LPA",
      "departure_date": "2016-11-30",
      "price": "160.86",
      "airline": "IB"
    },
    {
      "destination": "NCE",
      "departure_date": "2016-11-30",
      "price": "163.11",
      "airline": "AF"
    },
    {
      "destination": "LED",
      "departure_date": "2016-11-30",
      "price": "165.09",
      "airline": "SU"
    },
    {
      "destination": "LYS",
      "departure_date": "2016-11-30",
      "price": "174.75",
      "airline": "A5"
    },
    {
      "destination": "MLA",
      "departure_date": "2016-11-30",
      "price": "178.10",
      "airline": "KM"
    },
    {
      "destination": "LJU",
      "departure_date": "2016-11-30",
      "price": "182.10",
      "airline": "JP"
    },
    {
      "destination": "BRS",
      "departure_date": "2016-11-30",
      "price": "207.00",
      "airline": "BM"
    },
    {
      "destination": "ORK",
      "departure_date": "2016-11-30",
      "price": "207.62",
      "airline": "EI"
    },
    {
      "destination": "FRA",
      "departure_date": "2016-11-30",
      "price": "237.10",
      "airline": "LH"
    },
    {
      "destination": "BOD",
      "departure_date": "2016-11-30",
      "price": "255.75",
      "airline": "AF"
    },
    {
      "destination": "EAP",
      "departure_date": "2016-11-30",
      "price": "294.75",
      "airline": "A5"
    },
    {
      "destination": "TLS",
      "departure_date": "2016-11-30",
      "price": "325.75",
      "airline": "AF"
    },
    {
      "destination": "LAX",
      "departure_date": "2016-11-30",
      "price": "337.58",
      "airline": "DY"
    },
    {
      "destination": "YMQ",
      "departure_date": "2016-11-30",
      "price": "393.09",
      "airline": "TS"
    }
  ]
}'

from_mad_json = '{
  "origin": "MAD",
  "currency": "EUR",
  "results": [
    {
      "destination": "PMI",
      "departure_date": "2016-11-30",
      "price": "48.72",
      "airline": "D8"
    },
    {
      "destination": "LIS",
      "departure_date": "2016-11-30",
      "price": "51.41",
      "airline": "TP"
    },
    {
      "destination": "SVQ",
      "departure_date": "2016-11-30",
      "price": "55.45",
      "airline": "IB"
    },
    {
      "destination": "AGP",
      "departure_date": "2016-11-30",
      "price": "55.45",
      "airline": "IB"
    },
    {
      "destination": "BRU",
      "departure_date": "2016-11-30",
      "price": "65.41",
      "airline": "UX"
    },
    {
      "destination": "TRN",
      "departure_date": "2016-11-30",
      "price": "68.41",
      "airline": "0B"
    },
    {
      "destination": "OPO",
      "departure_date": "2016-11-30",
      "price": "76.41",
      "airline": "TP"
    },
    {
      "destination": "BCN",
      "departure_date": "2016-11-30",
      "price": "79.45",
      "airline": "UX"
    },
    {
      "destination": "TCI",
      "departure_date": "2016-11-30",
      "price": "82.41",
      "airline": "D8"
    },
    {
      "destination": "LPA",
      "departure_date": "2016-11-30",
      "price": "82.41",
      "airline": "D8"
    },
    {
      "destination": "LON",
      "departure_date": "2016-11-30",
      "price": "85.41",
      "airline": "UX"
    },
    {
      "destination": "ROM",
      "departure_date": "2016-11-30",
      "price": "87.41",
      "airline": "UX"
    },
    {
      "destination": "NAP",
      "departure_date": "2016-11-30",
      "price": "93.41",
      "airline": "IB"
    },
    {
      "destination": "CPH",
      "departure_date": "2016-11-30",
      "price": "93.41",
      "airline": "D8"
    },
    {
      "destination": "GVA",
      "departure_date": "2016-11-30",
      "price": "94.41",
      "airline": "LX"
    },
    {
      "destination": "FRA",
      "departure_date": "2016-11-30",
      "price": "98.41",
      "airline": "LA"
    },
    {
      "destination": "VLC",
      "departure_date": "2016-11-30",
      "price": "99.45",
      "airline": "UX"
    },
    {
      "destination": "DUB",
      "departure_date": "2016-11-30",
      "price": "107.41",
      "airline": "IB"
    },
    {
      "destination": "ALC",
      "departure_date": "2016-11-30",
      "price": "109.45",
      "airline": "UX"
    },
    {
      "destination": "OSL",
      "departure_date": "2016-11-30",
      "price": "128.41",
      "airline": "D8"
    },
    {
      "destination": "FLR",
      "departure_date": "2016-11-30",
      "price": "135.41",
      "airline": "IB"
    },
    {
      "destination": "SOF",
      "departure_date": "2016-11-30",
      "price": "138.41",
      "airline": "FB"
    },
    {
      "destination": "DUS",
      "departure_date": "2016-11-30",
      "price": "139.41",
      "airline": "IB"
    },
    {
      "destination": "BER",
      "departure_date": "2016-11-30",
      "price": "151.41",
      "airline": "AB"
    },
    {
      "destination": "BUH",
      "departure_date": "2016-11-30",
      "price": "151.41",
      "airline": "RO"
    },
    {
      "destination": "TUN",
      "departure_date": "2016-11-30",
      "price": "162.59",
      "airline": "TU"
    },
    {
      "destination": "MOW",
      "departure_date": "2016-11-30",
      "price": "187.85",
      "airline": "SU"
    },
    {
      "destination": "IST",
      "departure_date": "2016-11-30",
      "price": "191.85",
      "airline": "UX"
    },
    {
      "destination": "LIM",
      "departure_date": "2016-11-30",
      "price": "440.07",
      "airline": "PU"
    },
    {
      "destination": "CCS",
      "departure_date": "2016-11-30",
      "price": "780.33",
      "airline": "IB"
    },
    {
      "destination": "SRZ",
      "departure_date": "2016-11-30",
      "price": "781.85",
      "airline": "IB"
    },
    {
      "destination": "MVD",
      "departure_date": "2016-11-30",
      "price": "881.85",
      "airline": "UX"
    }
  ]
}'

from_par = JSON.parse(from_par_json)
from_mad = JSON.parse(from_mad_json)


class AmadeusComparator
  attr_reader :results_one, :results_two, :all_trips_one, :all_trips_two
  def initialize(jsons_one, jsons_two)
    @results_one = parse_json(jsons_one)
    @results_two = parse_json(jsons_two)
    @all_trips_one = @results_one['results']
    @all_trips_two = @results_two['results']
  end

  # Our main secret sauce for now
  def combine_prices
    output = []
    @all_trips_one.each do |trip_1|
      @all_trips_two.each do |trip_2|
        if trip_1['destination']== trip_2['destination']
          info = {}
          info[:destination] = trip_1['destination']
          info[:total] = trip_1['price'].to_f + trip_2['price'].to_f
          info[:trips] = [trip_1, trip_2]
          output << info
        end
      end
    end
    output
  end

  private

  def parse_json(json)
    JSON.parse(json)
  end
end

# "https://api.sandbox.amadeus.com/v1.2/flights/inspiration-search?apikey=d5pVrZJnTXLofPj1BtOShfWQsAaKXgMt&origin=PAR&departure_date=2016-11-30&one-way=true&direct=true"

class AmadeusRequester
  # date should be a string in "YYYY-MM-DD" format
  def initialize(args = {})
    @origin = args[:origin] # airport code
    @date = args[:date]
    @api_key = args[:api_key]
  end

  def make_request
    url = "https://api.sandbox.amadeus.com/v1.2/flights/inspiration-search?apikey=#{@api_key}&origin=#{@origin}&departure_date=#{@date}&one-way=true&direct=true"
    response = RestClient.get url
    response.body
  end
end

from_a_live = AmadeusRequester.new(origin: "FRA", date: "2016-11-30", api_key: Secret::AMADEUS_KEY).make_request
from_b_live = AmadeusRequester.new(origin: "PAR", date: "2016-11-30", api_key: Secret::AMADEUS_KEY).make_request

result = AmadeusComparator.new(from_a_live, from_b_live).combine_prices.sort_by { |result| result[:total] }.first

puts "The cheapest city to get from City 1 and City 2 is #{result[:destination]}"
puts "Flight 1:"
puts "City 1 to #{result[:destination]} for #{result[:trips][0]['price']}"
puts "Flight 2:"
puts "City 2 to #{result[:destination]} for #{result[:trips][1]['price']}"
puts "Total cost:"
puts "#{result[:total]}"
