one = [[48.91, "MAD", "MAD"], [61.91, "MAD", "MAD"], [69.91, "MAD", "MAD"], [73.91, "PAR", "ORY"], [76.91, "BCN", "BCN"], [80.91, "ZRH", "ZRH"], [80.91, "ZRH", "ZRH"], [81.91, "ZRH", "ZRH"], [85.91, "BCN", "BCN"], [85.91, "BCN", "BCN"], [85.91, "BCN", "BCN"], [90.91, "ZRH", "ZRH"], [98.91, "MAD", "MAD"], [99.91, "MAD", "MAD"], [105.91, "PAR", "ORY"], [105.91, "PAR", "ORY"], [105.91, "PAR", "ORY"], [110.91, "PAR", "ORY"], [136.91, "BER", "TXL"], [136.91, "MIL", "MXP"], [143.91, "ATH", "ATH"], [157.91, "ATH", "ATH"], [159.91, "MAD", "MAD"], [159.91, "MAD", "MAD"], [159.91, "MAD", "MAD"], [160.91, "MAD", "MAD"], [160.91, "MAD", "MAD"], [164.23, "LON", "LHR"], [164.23, "LON", "LHR"], [164.91, "BCN", "BCN"], [171.91, "BRU", "BRU"]]

two = [[31.12, "LON", "LGW"], [31.12, "LON", "LGW"], [46.03, "PAR", "CDG"], [50.91, "PAR", "CDG"], [55.02, "PAR", "CDG"], [55.02, "PAR", "CDG"], [55.02, "PAR", "CDG"], [57.9, "PAR", "CDG"], [60.9, "PAR", "CDG"], [70.93, "PAR", "CDG"], [71.08, "PAR", "CDG"], [71.08, "PAR", "CDG"], [71.89, "ROM", "FCO"], [71.89, "ROM", "FCO"], [73.0, "BRU", "BRU"], [74.15, "AMS", "AMS"], [74.15, "AMS", "AMS"], [74.15, "BCN", "BCN"], [74.15, "MAD", "MAD"], [74.15, "MAD", "MAD"]]

joint = []

one.each do |arr1|
  two.each do |arr2|
    if arr1[1] == arr2[1]
      joint << [arr1[0] + arr2[0], arr1[1]]
    end
  end
end

p joint.sort
