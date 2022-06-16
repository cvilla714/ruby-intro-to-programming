def sum_elements(arr1, arr2)
  new_arr = []
  i = 0
  while i < arr1.length
    new_item = arr1[i] + arr2[i]
    new_arr << new_item
    i += 1
  end
  new_arr
end

puts 'Simple version'
print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(%w[cat pizza boot], %w[dog pie camp]) # => ["catdog", "pizzapie", "bootcamp"]
puts
print sum_elements(%w[luffy zorro sanj], %w[yamato jinbei nami robin choppper]) # => ["catdog", "pizzapie", "bootcamp"]
puts

def sum_elements_using_each(arr1, arr2)
  new_arr = []

  arr1.each_with_index do |item, index|
    new_item = item + arr2[index]
    new_arr << new_item
  end
  new_arr
end

puts 'Each version'
print sum_elements_using_each([7, 4, 4], [3, 2, 11]) # => [10, 6, 15]
puts
print sum_elements_using_each(%w[cat pizza boot], %w[dog pie camp]) # => ["catdog", "pizzapie", "bootcamp"]
puts
print sum_elements_using_each(%w[luffy zorro sanj], %w[yamato jinbei nami robin choppper]) # => ["catdog", "pizzapie", "bootcamp"]
puts

def sum_elements_using_map(arr1, arr2)
  arr1.map.with_index do |item, index|
    item + arr2[index]
  end
end

puts 'Map version'
print sum_elements_using_map([7, 4, 4], [3, 2, 11]) # => [10, 6, 15]
puts
print sum_elements_using_map(%w[cat pizza boot], %w[dog pie camp]) # => ["catdog", "pizzapie", "bootcamp"]
puts
print sum_elements_using_map(%w[luffy zorro sanj], %w[yamato jinbei nami robin choppper]) # => ["catdog", "pizzapie", "bootcamp"]
puts
