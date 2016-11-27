airports = %w(SXF TXL LHR LGW CDG ORY BCN BRU AMS MAD LIS BUD ATH NCE CIA ZRH VIE PRG MXP)
origin1 = "LIS"
origin2 = "PRG"

# A helper to build arrays of possible flights for each of two origins
def possible_flights(list, args = { origin1: "LIS", origin2: "PRG" })
  origin1 = args[:origin1]
  origin2 = args[:origin2]

  possible_from_origin1 = list.map do |airport|
    if airport != origin1 && airport!= origin2
      [origin1, airport]
    end
  end

  possible_from_origin2 = list.map do |airport|
    if airport != origin1 && airport!= origin2
      [origin2, airport]
    end
  end

  return {
    from_origin: possible_from_origin1.compact,
    from_destination: possible_from_origin2.compact
  }
end

p possible_flights(airports)
