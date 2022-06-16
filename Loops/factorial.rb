# frozen_string_literal: true

def factorial(num)
  mult = 1
  i = 1
  while i <= num
    mult *= i
    puts i
    i += 1
  end
  mult
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120

def factorial_version_two(num)
  range = (1..num)
  sum = 1

  range.each do |i|
    sum *= i
  end
  sum
end

puts factorial_version_two(3) # => 6, because 1 * 2 * 3 = 6
puts
puts factorial_version_two(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120
