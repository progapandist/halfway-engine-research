require 'json'
require_relative 'json_results'
require_relative 'qpx_result'
require_relative 'comparator'

jsons_one = JSONResults::FROM_ORIGIN1
jsons_two = JSONResults::FROM_ORIGIN2

comparator = Comparator.new(jsons_one, jsons_two)
p comparator.all_trips_one.map { |trip| trip.price }.sort
p comparator.combine_prices.map { |info| info.price }
