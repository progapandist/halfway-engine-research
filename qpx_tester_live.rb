require_relative 'avion'

airports = %w(PRG LON BER) # %w(PAR, LON, ROM, MAD, BER, BRU, ATH, MXP, VCE, AMS, LIS, DUB, HEL, BCN, LCA, FLR, MLA, VIE, RIX, VNO)
origin_a = "PAR"
origin_b = "LIS"
date_there = "2016-12-15"
date_back = "2016-12-17"
routes = Avion.generate_routes(airports, origin_a, origin_b)


p start_time = Time.now

puts "=============="

jsons_from_a = Avion.query_qpx(routes[:from_a], date_there, date_back, "results_cache/from_a.txt")

# Work with last cache
# last_cache_a = Dir.glob(File.join('results_cache', '*.*')).max { |a,b| File.ctime(a) <=> File.ctime(b) }
# jsons_string = File.open(last_cache_a, "rb").read
# # Potentially a huge security hole
# jsons_from_a = eval(jsons_string)

########################

jsons_from_b = Avion.query_qpx(routes[:from_b], date_there, date_back, "results_cache/from_b.txt")


# Work with last cache
# last_cache_b = Dir.glob(File.join('results_cache', '*.*')).max { |a,b| File.ctime(a) <=> File.ctime(b) }
# jsons_string = File.open(last_cache_b, "rb").read
# # Potentially a huge security hole
# jsons_from_b = eval(jsons_string)

#########################

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
