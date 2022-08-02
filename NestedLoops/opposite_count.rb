# frozen_string_literal: true

def opposite_count(nums)
  count = 0
  pairs = []
  nums.each_with_index do |num1, idx1|
    nums.each_with_index do |num2, idx2|
      count += 1 if idx2 > idx1 && (num1 + num2).zero?
      pairs << [num1, num2] if idx2 > idx1 && (num1 + num2).zero?
    end
  end
  print count
  puts
  print pairs
end

puts opposite_count([2, 5, 11, -5, -2, 7]) # => 2
puts opposite_count([21, -23, 24 - 12, 23]) # => 1

# other solusion
def another_opposite_count(nums)
  count = 0

  nums.each_with_index do |num1, idx1|
    nums.each_with_index do |num2, idx2|
      count += 1 if (num1 + num2).zero? && idx2 > idx1
    end
  end

  count
end

puts another_opposite_count([2, 5, 11, -5, -2, 7]) # => 2
puts another_opposite_count([21, -23, 24 - 12, 23]) # => 1
