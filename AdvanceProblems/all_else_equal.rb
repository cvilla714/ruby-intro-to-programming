def all_else_equal(arr)
  total = arr.sum
  average = total / 2
  arr.include?(average) ? average : nil
end

puts 'cleaner version'
p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array

def another_all_else_equal(arr)
  arr.map { |ele| arr.sum - ele }.include?(arr.sum / 2) ? arr.sum / 2 : nil
end

puts 'another_all_equal'
p another_all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p another_all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p another_all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array
