require 'json'
require_relative 'json_results.rb'

origin_one = JSONResults::FROM_ORIGIN1
origin_two = JSONResults::FROM_ORIGIN2


def json_trip_options(jsons)
  jsons.map do |json|
    JSON.parse(json)['trips']['tripOption']
  end
end

def extract_price(trip_option)
  # Mock currency convertion for czech koruna (* 0.037 to get EUR)
  if trip_option['saleTotal'] =~ /CZK/
    (trip_option['saleTotal'].match(/\d+\.*\d+/)[0].to_f * 0.037).round(2)
  else
    trip_option['saleTotal'].match(/\d+\.*\d+/)[0].to_f
  end
end

def extract_destination(trip_option)

  #this is how we get to the city (in case we need it)
  trip_option['pricing'].first['fare'].first['destination']

  # This is how we get to destination airport code
  trip_option['slice'].first['segment'].first['leg'].first['destination']
end

def all_prices_sorted(jsons)
  all_options = json_trip_options(jsons).flatten
  prices_for_all_options = all_options.map { |option| extract_price(option) }
  cities_for_all_options = all_options.map { |option| extract_destination(option) }
  prices_for_all_options.zip(cities_for_all_options).sort
end

def display_all(results)
  all_cities_with_prices = all_prices_sorted(results)
  all_cities_with_prices.each { |e| puts "#{e[0]} - #{e[1]}" }
end

def cheapest(results)
  all_prices_sorted(results).first[0]
end

def display_cheapest(results)
  puts "#{all_prices_sorted(results).first[1]} for #{all_prices_sorted(results).first[0]}"
end

p all_prices_sorted(origin_one)
p "---------"
p all_prices_sorted(origin_two)
