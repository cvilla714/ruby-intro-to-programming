# frozen_string_literal: true

# Debug this code to pass rspec! There are 1 mistake to fix.

# Write a method, half_and_double, that accepts an array of numbers as an arg.
# The method should return a new array where every even number is divided by 2 and every odd
# number is multipled by 2.

require 'byebug'

# def half_and_double(array)
#   array.map do |num|
# if num.even?
#   num / 2
# else
#   num * 2
# end
#   end
# end

# another way to write it using ternary operator
def half_and_double(array)
  array.map { |num| num.even? ? num / 2 : num * 2 }
end
