require 'json'
require_relative 'qpx_trip'

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
