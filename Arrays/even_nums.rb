def even_nums(max)
  evennum = []
  i = 0
  while i <= max
    evennum << i if i.even?
    i += 1
  end
  evennum
end

puts 'Using simple version'
print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]

def even_nums_using_each(max)
  evennum = []
  (0..max).each do |i|
    evennum << i if i.even?
  end
  evennum
end

puts
puts 'Using each version'
print even_nums_using_each(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums_using_each(5)  # => [0, 2, 4]

def even_nums_using_map(max)
  even_nums = (0..max).map { |i| i if i.even? }
  even_nums.compact
end

puts
puts 'Using map version'
print even_nums_using_map(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums_using_map(5)  # => [0, 2, 4]
