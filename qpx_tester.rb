require_relative 'avion'
require_relative 'secret'
require_relative 'json_results'

airports = %w(SXF LHR BCN AMS MAD LIS PRG OPO CDG ORY)
origin_a = "MAD"
origin_b = "PAR"
date = "2016-11-30"
routes = Avion.generate_routes(airports, origin_a, origin_b)

# THIS PART MAY COST YOU ACTUAL MONEY, USE WITH CAUTION!
jsons_from_a = JSONResults::FROM_ORIGIN1 # [] # Use JSONResults::FROM_ORIGIN1 for cashed results
jsons_from_b = JSONResults::FROM_ORIGIN2 # [] # JSONResults::FROM_ORIGIN2 for cashed results

p start_time = Time.now

puts "=============="

# NOTE: You must user your own API string from Google QPX instead of Secret::QPX_KEY
# routes[:from_a].each do |route|
#   jsons_from_a << Avion::QPXRequester.new(origin: route.first, destination: route.last, date: date, trip_options: 5, api_key: Secret::QPX_KEY).make_request
# end
#
# routes[:from_b].each do |route|
#   jsons_from_b << Avion::QPXRequester.new(origin: route.first, destination: route.last, date: date, trip_options: 5, api_key: Secret::QPX_KEY).make_request
# end
#
comparator = Avion::Comparator.new(jsons_from_a, jsons_from_b)
combined_results = comparator.combine_prices.sort_by { |info| info[:total] }.first

puts "Total trips analyzed: "
p combined_results.count

# render to console
Avion.print_result(combined_results)

puts "=============="

p end_time = Time.now

puts "=============="

p "It took #{end_time - start_time} to get results from Google"
