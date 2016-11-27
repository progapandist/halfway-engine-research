require 'json'
require_relative 'json_results'
require_relative 'qpx_result'
require_relative 'comparator'

jsons_one = JSONResults::FROM_ORIGIN1
jsons_two = JSONResults::FROM_ORIGIN2

comparator = Comparator.new(jsons_one, jsons_two)
comb_prices_list = comparator.combine_prices.map { |info| info[:total] }
comb_prices_list.sort

cheapest = comparator.combine_prices.sort_by { |info| info[:total] }.first

puts "The cheapest city to get from #{cheapest[:trips][0].origin_airport} and #{cheapest[:trips][1].origin_airport} is #{cheapest[:destination_city]}"
puts "Flight 1:"
puts "From #{cheapest[:trips][0].origin_airport} to #{cheapest[:trips][0].destination_airport} for #{cheapest[:trips][0].price}"
puts "Flight 2:"
puts "From #{cheapest[:trips][1].origin_airport} to #{cheapest[:trips][1].destination_airport} for #{cheapest[:trips][1].price}"
puts "Total cost:"
puts "#{cheapest[:total]}"

second = comparator.combine_prices.sort_by { |info| info[:total] }[1]

puts "The second cheapest city to get from #{second[:trips][0].origin_airport} and #{second[:trips][1].origin_airport} is #{second[:destination_city]}"
puts "Flight 1:"
puts "From #{second[:trips][0].origin_airport} to #{second[:trips][0].destination_airport} for #{second[:trips][0].price}"
puts "Flight 2:"
puts "From #{second[:trips][1].origin_airport} to #{second[:trips][1].destination_airport} for #{second[:trips][1].price}"
puts "Total cost:"
puts "#{second[:total]}"
