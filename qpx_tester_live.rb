require_relative 'avion'

airports = %w(PAR LON ROM MAD BER BRU ATH MXP VCE AMS LIS DUB HEL BCN LCA FLR MLA VIE RIX VNO)
origin_a = "LIS"
origin_b = "VNO"
date_there = "2017-02-03"
date_back = "2017-02-06"
routes = Avion.generate_routes(airports, origin_a, origin_b)


p start_time = Time.now

puts "=============="

jsons_from_a = Avion.query_qpx(routes[:from_a], date_there, date_back, "results_cache/from_a.txt")
jsons_from_b = Avion.query_qpx(routes[:from_b], date_there, date_back, "results_cache/from_b.txt")

comparator = Avion::Comparator.new(jsons_from_a, jsons_from_b)
comparison_results = comparator.combine_prices
sorted_results = comparison_results.sort_by { |info| info.total }
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
