require 'json'
require_relative 'json_results'
require_relative 'qpx_trip'

class QPXResult
  attr_reader :trips

  def initialize(json) # in JSON
    @data = JSON.parse(json)
    @trips = create_trips(@data['trips']['tripOption'])
  end

  private

  def create_trips(trips)
    trips.map do |trip|
      QPXTrip.new(trip)
    end
  end

end
