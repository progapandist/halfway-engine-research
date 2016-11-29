require_relative 'avion'
require_relative 'secret'
require_relative 'json_results'

airports = %w(MAD BCN LON LIS OPO AMS BRU BER)
origin_a = "PAR"
origin_b = "LCG"
date = "2016-12-2"
routes = Avion.generate_routes(airports, origin_a, origin_b)

# THIS PART MAY COST YOU ACTUAL MONEY, USE WITH CAUTION!
jsons_from_a = [] # Use JSONResults::FROM_ORIGIN1 for cashed results
jsons_from_b = [] # JSONResults::FROM_ORIGIN2 for cashed results

p start_time = Time.now

puts "=============="

# NOTE: You must user your own API string from Google QPX instead of Secret::QPX_KEY
routes[:from_a].each do |route|
  jsons_from_a << Avion::QPXRequester.new(origin: route.first, destination: route.last, date: date, trip_options: 5, api_key: Secret::QPX_KEY).make_request
end

File.open("results_cache/from_#{origin_a}_on_#{date}.txt", 'w') { |file| file.write(jsons_from_a) }

routes[:from_b].each do |route|
  jsons_from_b << Avion::QPXRequester.new(origin: route.first, destination: route.last, date: date, trip_options: 5, api_key: Secret::QPX_KEY).make_request
end

File.open("results_cache/from_#{origin_b}_on_#{date}.txt", 'w') { |file| file.write(jsons_from_b) }

comparator = Avion::Comparator.new(jsons_from_a, jsons_from_b)
comparison_results = comparator.combine_prices
sorted_results = comparison_results.sort_by { |info| info[:total] }
cheapest = sorted_results.first

puts "Total requests made to Google QPX: #{jsons_from_a.count + jsons_from_b.count} "
puts "From city A: #{jsons_from_a.count}"
puts "From city B: #{jsons_from_b.count}"

puts "Total trips analyzed: #{comparison_results.count}"
puts "=============="

# render to console
Avion.print_result(cheapest, sorted_results)

puts "=============="

p end_time = Time.now

puts "=============="

p "It took #{(end_time - start_time).round(2)} seconds to get results from Google"
