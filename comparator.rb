require_relative 'qpx_result'

class Comparator
  def initialize(jsons_one, jsons_two)
    @jsons_one = jsons_one
    @jsons_two = jsons_two
  end

  def render_readable
    output = prepare_readable(@jsons_one, @jsons_two)
    p output[0]
    puts "========="
    p output[1]
  end

  private

  def prepare_readable(jsons_one, jsons_two)
    results_one = jsons_one.map do |json|
      QPXResult.new(json)
    end

    results_two = jsons_two.map do |json|
      QPXResult.new(json)
    end

    readable_one = results_one.map do |result|
      result.trips.map do |trip|
        [trip.price, trip.destination_city, trip.destination_airport]
      end
    end

    readable_two = results_two.map do |result|
      result.trips.map do |trip|
        [trip.price, trip.destination_city, trip.destination_airport]
      end
    end

    # We need to flatten mapped array before soring
    readable_one = readable_one.flatten(1).sort
    readable_two = readable_two.flatten(1).sort
    [readable_one, readable_two]
  end
end
