require 'json'
require_relative 'json_results'
require_relative 'qpx_result'
require_relative 'comparator'

jsons_one = JSONResults::FROM_ORIGIN1
jsons_two = JSONResults::FROM_ORIGIN2

comparator = Comparator.new(jsons_one, jsons_two)
#comparator.print_readable

test_result = QPXResult.new(jsons_two[1])
p test_result.list_trips
