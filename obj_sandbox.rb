require 'json'
require_relative 'json_results'
require_relative 'qpx_result'

jsons_one = JSONResults::FROM_ORIGIN1
jsons_two = JSONResults::FROM_ORIGIN2

result_one = jsons_one.map do |json|
  QPXResult.new(json)
end

result_two = jsons_two.map do |json|
  QPXResult.new(json)
end

p result_one.first.trips.first.destination_city
