require 'json'

p last_changed_file = Dir.glob(File.join('results_cache', '*.*')).max { |a,b| File.ctime(a) <=> File.ctime(b) }

jsons_string = File.open(last_changed_file, "rb").read
# Potentially a huge security hole
jsons = eval(jsons_string)
p jsons.class
