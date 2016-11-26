require 'json'
require_relative 'json_results'
require_relative 'qpx_result'

jsons_one = JSONResults::FROM_ORIGIN1
jsons_two = JSONResults::FROM_ORIGIN2

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
readable_one = readable_one.flatten(1).sort

readable_two = results_two.map do |result|
  result.trips.map do |trip|
    [trip.price, trip.destination_city, trip.destination_airport]
  end
end
readable_two = readable_two.flatten(1).sort

p readable_one
puts "==========="
p readable_two
