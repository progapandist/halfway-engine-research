require_relative 'qpx_result'

class Comparator
  attr_reader :results_one, :results_two, :all_trips_one, :all_trips_two
  def initialize(jsons_one, jsons_two)
    @results_one = objectify(jsons_one)
    @results_two = objectify(jsons_two)
    @all_trips_one = list_all_trips(@results_one)
    @all_trips_two = list_all_trips(@results_two)
  end

  def print_readable
    output = prepare_readable
    p output[0]
    puts "========="
    p output[1]
  end

  # TODO
  def combine_prices
    output = {}
    @all_trips_one.each do |trip_1|
      @all_trips_two.trips.each do |trip_2|
        if trip_1.destination_city == trip_2.destination_city
          output[:combined_price] << trip_1.price + trip_2.price
          output[:trips] == [trip_1, trip_2]
        end
      end
      output
    end
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
