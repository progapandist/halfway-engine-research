require 'rest-client' # Make sure you have this gem!
require 'json'

module Avion
  # Wraps an individual QPX response
  class QPXResult
    attr_reader :trips
    def initialize(json) # in JSON
      @data = JSON.parse(json)
      @trips = create_trips(@data['trips']['tripOption'])
    end

    # Deprecated method
    def list_trips
      trips_by_price = @trips.map do |trip|
        [trip.price, trip.destination_city, trip.destination_airport]
      end
    end

    private

    def create_trips(trips)
      trips.map do |trip|
        QPXTrip.new(trip)
      end
    end
  end

  # Wraps an individual QPX trip option inside each response
  class QPXTrip
    attr_reader :price, :destination_city, :destination_airport, :origin_airport
    def initialize(trip)
      @trip = trip
      @price = extract_total_price(@trip)
      @destination_city = extract_destination_city(@trip)
      @destination_airport = extract_destination_airport(@trip)
      @origin_airport = extract_origin_airport(@trip)
    end

    private

    def extract_total_price(trip)
      # Mock currency convertion for czech koruna (* 0.037 to get EUR)
      # TODO: get rid of in actual project, will only work in eurozone for the demo
      if trip['saleTotal'] =~ /CZK/
        (trip['saleTotal'].match(/\d+\.*\d+/)[0].to_f * 0.037).round(2)
      else
        trip['saleTotal'].match(/\d+\.*\d+/)[0].to_f
      end
    end

    def extract_destination_city(trip)
      # This is how we get to the city cody
      trip['pricing'].first['fare'].first['destination']
    end

    def extract_origin_airport(trip)
      trip['pricing'].first['fare'].first['origin']
    end

    def extract_destination_airport(trip)
      # This is how we get to destination airport code
      trip['slice'].first['segment'].first['leg'].first['destination']
    end
  end

  # Has a method #make_request that sends a request to QPX and gets a response
  # in original JSON
  class QPXRequester
    # date should be a string in "YYYY-MM-DD" format
    def initialize(args = {})
      @origin = args[:origin] # airport code
      @destination = args[:destination] #airport code
      @date = args[:date]
      @trip_options = args[:trip_options]
      @api_key = args[:api_key]
    end

    def make_request
      url = "https://www.googleapis.com/qpxExpress/v1/trips/search?key=" + @api_key
      request = compose_request
      response = RestClient.post url, request, {content_type: :json, accept: :json}
      response.body
    end

    private

    def compose_request
      # HERE IS A QPX ACCEPTED REQUEST FORM
      # ONLY CHANGE IT TO MAKE MORE VALUES DYNAMIC
      # WITHOUT BREAKING THE STRUCTURE!
      request_hash = {
        "request"=>
        {"slice"=>[{"origin"=>@origin, "destination"=>@destination, "date"=>@date}],
        "passengers"=>
        {"adultCount"=>1,
          "infantInLapCount"=>0,
          "infantInSeatCount"=>0,
          "childCount"=>0,
          "seniorCount"=>0},
          "solutions"=>@trips_by_price,
          "refundable"=>false}
        }
      return JSON.generate(request_hash)
    end
  end

  # Our main comparison logic goes here. Takes two arrays of JSON QPX responses
  # one for each origin
  class Comparator
    attr_reader :results_one, :results_two, :all_trips_one, :all_trips_two
    def initialize(jsons_one, jsons_two)
      @results_one = objectify(jsons_one)
      @results_two = objectify(jsons_two)
      @all_trips_one = list_all_trips(@results_one)
      @all_trips_two = list_all_trips(@results_two)
    end

    # Our main secret sauce for now 
    def combine_prices
      output = []
      @all_trips_one.each do |trip_1|
        @all_trips_two.each do |trip_2|
          if trip_1.destination_city == trip_2.destination_city
            info = {}
            info[:destination_city] = trip_1.destination_city
            info[:total] = trip_1.price + trip_2.price
            info[:trips] = [trip_1, trip_2]
            output << info
          end
        end
      end
      output
    end

    def print_readable
      output = prepare_readable
      p output[0]
      puts "========="
      p output[1]
    end

    private

    def objectify(jsons)
      jsons.map do |json|
        QPXResult.new(json)
      end
    end

    def list_all_trips(results)
      results.map { |result| result.trips }.flatten
    end

    def prepare_readable
      readable_one = @results_one.map do |result|
        result.trips.map do |trip|
          [trip.price, trip.destination_city, trip.destination_airport]
        end
      end

      readable_two = @results_two.map do |result|
        result.trips.map do |trip|
          [trip.price, trip.destination_city, trip.destination_airport]
        end
      end

      # We need to flatten mapped arrays before soring
      readable_one = readable_one.flatten(1).sort
      readable_two = readable_two.flatten(1).sort
      [readable_one, readable_two]
    end
  end
end