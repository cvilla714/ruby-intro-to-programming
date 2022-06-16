# frozen_string_literal: true

def element_times_index(numbers)
  newnum = []
  i = 0
  while i < numbers.length

    newnum << numbers[i] * i

    i += 1
  end
  newnum
end

puts 'Using simple version'
print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]

def element_using_each(numbers)
  newnum = []
  numbers.each_with_index do |number, idx|
    newnum << number * idx
  end
  newnum
end

puts
puts 'Using each with index version'
print element_using_each([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_using_each([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]
