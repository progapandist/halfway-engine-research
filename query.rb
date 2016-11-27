require 'rest-client'
require 'json'

api_url = "https://www.googleapis.com/qpxExpress/v1/trips/search?key=AIzaSyBnlfrmZublTsONBihxYuaRYBq3nZXWs9M"

origin = "LIS"
destination = "AMS"
date = "2016-11-28"

request_hash = {
  "request"=>
  {"slice"=>[{"origin"=>origin, "destination"=>destination, "date"=>date}],
  "passengers"=>
  {"adultCount"=>1,
    "infantInLapCount"=>0,
    "infantInSeatCount"=>0,
    "childCount"=>0,
    "seniorCount"=>0},
    "solutions"=>1,
    "refundable"=>false}
  }

request_json = JSON.generate(request_hash)

response = RestClient.post api_url, request_json, {content_type: :json, accept: :json}

p response.body
