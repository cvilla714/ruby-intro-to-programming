# frozen_string_literal: true

def hash_to_pairs(hash)
  new_arr = []
  hash.each { |key, val| new_arr << [key, val] }
  new_arr
end

print hash_to_pairs({ 'name' => 'skateboard', 'wheels' => 4, 'weight' => '7.5 lbs' }) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts

print hash_to_pairs({ 'kingdom' => 'animalia', 'genus' => 'canis', 'breed' => 'German Shepherd' }) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
puts
