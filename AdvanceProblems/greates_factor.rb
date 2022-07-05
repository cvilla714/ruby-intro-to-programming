def factor(num)
  factors = []
  (1...num).each do |i|
    # print i
    # puts
    # this will shovel the numbers the imtes that the number is divisible by
    factors << i if num % i == 0
  end
  # here we will take the max number of the factors
  factors.max
end

puts 'printing the factors of the number 16'
print factor(16) # => 8
puts

puts 'printing the factosr of number 30'
print factor(30) # => 15
puts

def greatest_factor_array(arr)
  arr.map do |item|
    if item.even?
      factor(item)
    else
      item
    end
  end
end

puts 'using long method'
print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts

def using_ternary(num)
  num.map { |item| item.even? ? factor(item) : item }
end

puts 'using ternary'
print using_ternary([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print using_ternary([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts
