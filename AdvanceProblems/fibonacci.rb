# frozen_string_literal: true

def fibonacci(length)
  fib = [0, 1]
  case length
  when 0
    return []
  when 1
    return [1]
  else
    fib << fib[-1] + fib[-2] while fib.length <= length
  end

  fib
end

puts 'using if statement'
print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts

def another_fibonacci(length)
  fib = [0, 1]
  case length
  when 0
    return []
  when 1
    return [1]
  else
    fib << fib[-1] + fib[-2] while fib.length <= length
  end

  fib
end

puts 'using case statement'
print another_fibonacci(0) # => []
puts
print another_fibonacci(1) # => [1]
puts
print another_fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print another_fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts
