# frozen_string_literal: true

def range(min, max)
  nums = []

  i = min
  while i <= max
    nums << i

    i += 1
  end

  nums
end

puts 'Using simple version'
print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]
puts

def range_using_each(min, max)
  nums = []

  (min..max).each do |i|
    nums << i
  end
  nums
end

puts
puts 'Using each version'
print range_using_each(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range_using_each(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]
puts

def range_using_map(min, max)
  (min..max).map { |i| i }
end
puts
puts 'Using map version'
print range_using_each(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range_using_each(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]
puts
