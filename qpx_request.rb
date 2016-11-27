require 'rest-client'
require 'json'
require 'secret'

class QPXRequester

  # date should be a string in "YYYY-MM-DD" format
  def initialize(args = {})
    @origin = args[:origin]
    @destination = args[:destination]
    @date = args[:date]
    @trip_options = args[:trip_options]
    @api_key = args[:api_key]
  end

  def make_request
    url = "https://www.googleapis.com/qpxExpress/v1/trips/search?key=" + @api_key
    p request = compose_request
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

requester = QPXRequester.new(origin: "LIS", destination: "AMS", date: "2016-11-28", trip_options: 3, api_key: Secret::QPX_KEY)
