# frozen_string_literal: true

def either_only(number)
  if ((number % 3).zero? || (number % 5).zero?) && !((number % 3).zero? && (number % 5).zero?)
    true
  else
    false
  end
end

puts either_only(9)  # => true
puts either_only(20) # => true
puts either_only(7)  # => false
puts either_only(15) # => false
puts either_only(30) # => false
