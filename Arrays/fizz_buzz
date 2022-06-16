def fizz_buzz(max)
  new_elements = []
  for i in (1...max)
    # if !(i%4 == 0 && i%6==0) && (i%4==0 || i%6==0)
    new_elements << i if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
  end
  new_elements
end

puts 'Using simple version'
print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]
puts

def fizz_buzz_each_version(max)
  new_elements = []
  (1...max).each do |i|
    new_elements << i if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
  end
  new_elements
end

puts 'Using each version'
print fizz_buzz_each_version(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz_each_version(15) # => [4, 6, 8]
puts

def fizz_buzz_map_version(max)
  new_elements = (1...max).map { |i| i if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0) }
  new_elements.compact
end

puts 'Using map version'
print fizz_buzz_each_version(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz_each_version(15) # => [4, 6, 8]
puts
