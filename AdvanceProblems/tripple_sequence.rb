# frozen_string_literal: true

def three_times(num)
  num * 3
end

puts 'printing the number multiply by 3'
puts three_times(10) # => 30
puts three_times(5) # => 15
puts three_times(3) # => 9
puts

def triple_sequence(start, length)
  another = [start]
  length.times { another << another[-1] * 3 }
  another
end

puts 'using times method'
print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts

def another_solution(start, length)
  seq = [start]
  seq << seq[-1] * 3 while seq.length < length
  seq
end

puts 'using while loop'
print another_solution(2, 4) # => [2, 6, 18, 54]
puts
print another_solution(4, 5) # => [4, 12, 36, 108, 324]
puts
