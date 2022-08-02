# frozen_string_literal: true

def summation(num)
  (1..num).inject(:+)
end

puts 'print the summation sequence'
puts summation(5) # => 15
puts summation(6) # => 21

def summation_sequence(start, length)
  seq = [start]
  length.times { seq << summation(seq[-1]) }
  seq
end

puts 'using times method'
print summation_sequence(3, 4) # => [3, 6, 21, 231]
puts
print summation_sequence(5, 3) # => [5, 15, 120]
puts
def another_summation_sequence(start, length)
  seq = [start]
  seq << summation(seq[-1]) while seq.length < length
  seq
end

puts 'using times method'
print another_summation_sequence(3, 4) # => [3, 6, 21, 231]
puts
print another_summation_sequence(5, 3) # => [5, 15, 120]
puts
