# We have n*(n-1) possible request pairs for n entries
# Let's test that

airports = %w(SXF LHR BCN AMS MAD LIS PRG OPO CDG ORY) # MXP NYC MOW DLL BCN BRU LGW BUD PRG SPB

def generate_all_requests(airports)
  pairs = []
  airports.each do |airport|
    excluding = airports.reject { |a| a == airport }
    excluding.each do |other|
      pairs << [airport, other]
    end
  end
  pairs
end

p airports.count
p generate_all_requests(airports).count
