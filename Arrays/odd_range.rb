def odd_range(min, max)
  oddn = []
  i = min
  while i <= max
    oddn << i if i.odd?
    i += 1
  end
  oddn
end

puts
puts 'Using simple version'
print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]
puts

def odd_range_using_each(min, max)
  oddn = []
  range = (min..max)
  range.each do |num|
    # puts num
    oddn << num if num.odd?
  end
  oddn
end

puts 'Using each version'
print odd_range_using_each(11, 18) # => [11, 13, 15, 17]
puts
print odd_range_using_each(3, 7)   # => [3, 5, 7]
puts

def odd_range_using_map(min, max)
  oddn = (min..max).map { |num| num if num.odd? }
  oddn.compact
end

puts 'Using map version'
print odd_range_using_map(11, 18) # => [11, 13, 15, 17]
puts
print odd_range_using_map(3, 7)   # => [3, 5, 7]
puts
