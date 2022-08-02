# frozen_string_literal: true

def is_prime?(num)
  return false if num < 2

  (2...num).each do |i|
    return false if (num % i).zero?
  end
  true
end

def pick_primes(numbers)
  numbers.select { |num| is_prime?(num) }
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts
