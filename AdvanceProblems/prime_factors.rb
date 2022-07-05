def prime?(num)
  return false if num < 2

  (2...num).each do |i|
    return false if num % i == 0
  end
  true
end

def prime_factors(num)
  factors = []
  (2...num).each do |i|
    factors << i if num % i == 0
  end
  factors.select { |item| prime?(item) }
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
