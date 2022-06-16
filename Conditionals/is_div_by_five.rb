# frozen_string_literal: true

def is_div_by_5(number)
  (number % 5).zero?
end

puts is_div_by_5(10) # => true
puts is_div_by_5(40) # => true
puts is_div_by_5(42) # => false
puts is_div_by_5(8)  # => false
