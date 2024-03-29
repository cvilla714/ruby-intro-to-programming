# frozen_string_literal: true

def map_by_name(arr)
  arr.map { |item| item['name'] }
end

pets = [
  { 'type' => 'dog', 'name' => 'Rolo' },
  { 'type' => 'cat', 'name' => 'Sunny' },
  { 'type' => 'rat', 'name' => 'Saki' },
  { 'type' => 'dog', 'name' => 'Finn' },
  { 'type' => 'cat', 'name' => 'Buffy' }
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
  { 'name' => 'Japan', 'continent' => 'Asia' },
  { 'name' => 'Hungary', 'continent' => 'Europe' },
  { 'name' => 'Kenya', 'continent' => 'Africa' }
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts
