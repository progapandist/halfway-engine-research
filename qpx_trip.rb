require 'json'

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
