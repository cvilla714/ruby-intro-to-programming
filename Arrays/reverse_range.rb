# frozen_string_literal: true

def reverse_range(min, max)
  revnum = []
  i = max - 1
  while i > min
    revnum << i
    i -= 1
  end
  revnum
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]
puts

def reverse_using_each(min, max)
  revnum = []
  # this will create the range excluding the max and min numbers
  range = (max - 1).downto(min + 1)
  range.each do |num|
    # puts num
    revnum << num
  end
  revnum
end

puts 'Using each version'
print reverse_using_each(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_using_each(1, 7)   # => [6, 5, 4, 3, 2]
puts

def reverse_using_map(min, max)
  revnum = (max - 1).downto(min + 1).map { |num| num }
  revnum.compact
end

puts 'Using map version'
print reverse_using_map(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_using_map(1, 7)   # => [6, 5, 4, 3, 2]
puts
