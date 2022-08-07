# frozen_string_literal: true

require 'byebug'
def average_of_three(num1, num2, num3)
  sum = num1 + num2 + num3
  average = sum / 3.0
end

# debugger
# playing with debugger
# first_number = average_of_three(1, 2, 3)
# second_number = first_number + 10

puts average_of_three(3, 7, 8)   # => 6.0
puts average_of_three(2, 5, 17)  # => 8.0
puts average_of_three(2, 8, 1)   # => 3.666666
