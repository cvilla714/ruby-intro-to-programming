def doubler(numbers)
  newnum = []

  i = 0
  while i < numbers.length
    oldnumbers = numbers[i]
    newnumbers = oldnumbers * 2
    newnum << newnumbers

    i += 1
  end
  newnum
end

puts 'Using simple version'
print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]

puts
puts 'Using each version'
def double_new_version(numbers)
  new_numbers = []

  numbers.each do |number|
    new_numbers << number * 2
  end
  new_numbers
end

print double_new_version([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print double_new_version([7, 1, 8])    # => [14, 2, 16]

puts
puts 'Using map version'
def double_using_map(numbers)
  numbers.map { |number| number * 2 }
end

print double_using_map([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print double_using_map([7, 1, 8])    # => [14, 2, 16]
