# frozen_string_literal: true

# Write a method, is_sorted(arr), that accepts an array of numbers as an arg.
# The method should return true if the elements are in increasing order, false otherwise.
# Do not use the built-in Array#sort in your solution :)

def is_sorted(arr)
  #   arr.each_cons(3) { |element| p element }
  arr.each_cons(2).all? { |a, b| a <= b }
end

puts 'using each_cons with all'
p is_sorted([1, 4, 10, 13, 15]) # => true
p is_sorted([1, 4, 10, 10, 13, 15]) # => true
p is_sorted([1, 2, 5, 3, 4]) # => false
puts

def another_is_sorted(arr)
  (0...arr.length - 1).all? { |i| arr[i] <= arr[i + 1] }
end

puts 'using .all method'
p another_is_sorted([1, 4, 10, 13, 15]) # => true
p another_is_sorted([1, 4, 10, 10, 13, 15]) # => true
p another_is_sorted([1, 2, 5, 3, 4]) # => false
puts

def another_example_is_sorted(arr)
  (0...arr.length - 1).each do |i|
    return false if arr[i] > arr[i + 1]
  end
  true
end

puts 'using each do'
p another_example_is_sorted([1, 4, 10, 13, 15]) # => true
p another_example_is_sorted([1, 4, 10, 10, 13, 15]) # => true
p another_example_is_sorted([1, 2, 5, 3, 4]) # => false
puts
