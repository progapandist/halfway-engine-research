require_relative 'avion'

p start_time = Time.now

puts "=============="

jsons_from_a = eval(File.open("results_cache/mock_from_lis.txt", "rb").read)
jsons_from_b =  eval(File.open("results_cache/mock_from_vno.txt", "rb").read)


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

puts "============="

p sorted_results.first
