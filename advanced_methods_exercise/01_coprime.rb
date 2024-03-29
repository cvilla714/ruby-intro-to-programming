# frozen_string_literal: true

# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1, num_2)
  (2..num_1).each do |num|
    return false if (num_1 % num).zero? && (num_2 % num).zero?
  end

  true
end

puts 'applying each'
p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
puts

def another_coprime?(num_1, num_2)
  (2..num_1).none? { |num| (num_1 % num).zero? && (num_2 % num).zero? }
end

puts 'using none?'
p another_coprime?(25, 12)    # => true
p another_coprime?(7, 11)     # => true
p another_coprime?(30, 9)     # => false
p another_coprime?(6, 24)     # => false
puts
