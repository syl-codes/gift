require 'json'

total_array = Array.new
1.upto(21) do |x|
  file = File.read("./#{x}.txt")
  data_hash = JSON.parse(file)
  total_array << data_hash
end

total_array.flatten!
total_array.uniq!
puts total_array.count
