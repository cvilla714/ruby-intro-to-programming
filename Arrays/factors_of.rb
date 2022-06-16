# frozen_string_literal: true

def factors_of(num)
  factnum = []
  i = 1
  while i <= num
    # if the variable numb can be divided by the counter then add it to the array
    factnum << i if (num % i).zero?
    i += 1
  end

  factnum
end

puts 'using simple version'
print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]
puts

def factors_of_using_each(num)
  factnum = []
  (1..num).each do |i|
    factnum << i if (num % i).zero?
  end

  factnum
end

puts 'Using each version'
print factors_of_using_each(3)   # => [1, 3]
puts
print factors_of_using_each(4)   # => [1, 2, 4]
puts
print factors_of_using_each(8)   # => [1, 2, 4, 8]
puts
print factors_of_using_each(9)   # => [1, 3, 9]
puts
print factors_of_using_each(16)  # => [1, 2, 4, 8, 16]
puts

def factors_of_using_map(num)
  (1..num).map { |i| (num % i).zero? ? i : nil }.compact
end

puts 'Using map version'
print factors_of_using_map(3)   # => [1, 3]
puts
print factors_of_using_map(4)   # => [1, 2, 4]
puts
print factors_of_using_map(8)   # => [1, 2, 4, 8]
puts
print factors_of_using_map(9)   # => [1, 3, 9]
puts
print factors_of_using_map(16)  # => [1, 2, 4, 8, 16]
puts
