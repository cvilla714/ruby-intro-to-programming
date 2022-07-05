def prime?(num)
  return false if num < 2

  (2..Math.sqrt(num)).each do |i|
    return false if num % i == 0
  end
  true
end

puts 'using some fancy'
puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false
puts
def another_prime?(num)
  return false if num < 2

  (2...num).each do |i|
    return false if num % i == 0
  end
  true
end

puts 'using only each to get the prime numbers'
puts another_prime?(2)  #=> true
puts another_prime?(5)  #=> true
puts another_prime?(11) #=> true
puts another_prime?(4)  #=> false
puts another_prime?(9)  #=> false
puts another_prime?(-5) #=> false
puts

def third_prime(num)
  return false if num < 2

  (2...num).map do |item|
    return false if num % item == 0
  end
  true
end

puts 'using third_prime using map to get the prime numbers'
puts third_prime(2)  #=> true
puts third_prime(3)  #=> true
puts third_prime(5)  #=> true
puts third_prime(11) #=> true
puts third_prime(4)  #=> false
puts third_prime(9)  #=> false
puts third_prime(-5) #=> false
