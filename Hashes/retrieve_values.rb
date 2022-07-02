def retrieve_values(hash1, hash2, key)
  # puts hash1[key]
  # puts hash2[key]
  return hash1[key], hash2[key] if hash1.has_key?(key) && hash2.has_key?(key)
end

dog1 = { 'name' => 'Fido', 'color' => 'brown' }
dog2 = { 'name' => 'Spot', 'color' => 'white' }
print retrieve_values(dog1, dog2, 'name') #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, 'color') #=> ["brown", "white"]
puts
