require 'json'

candidates = (0..39967).to_a
candidates.shuffle!

gift = {
  "1" => 1, 
  "2" => 1, 
  "3" => 5, 
  "4" => 3, 
  "5" => 5, 
  "6" => 5, 
  "7" => 20, 
  "8" => 4968, 
  "9" => 2450, 
  "10" => 200, 
  "11" => 2000, 
  "12" => 200, 
  "13" => 1, 
  "14" => 2, 
  "15" => 30, 
  "16" => 30, 
  "17" => 20, 
  "18" => 27, 
  "19" => 10000,
  "20" => 10000, 
  "21" => 10000}

index = 0
gift.each do |x, y|
  File.write("#{x}.txt", candidates[index...(index+y)].sort.to_json)
  index = index + y
end
