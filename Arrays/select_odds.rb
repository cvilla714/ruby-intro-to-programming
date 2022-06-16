def select_odds(numbers)
  odd_numbers = []
  i = 0
  while i < numbers.length
    # puts numbers[i]
    new_numbers = numbers[i]
    odd_numbers << new_numbers if new_numbers.odd?
    i += 1
  end
  odd_numbers
end

puts 'Simple version'
print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []
puts

def select_odds_using_each(numbers)
  numbers.select(&:odd?)
end

puts 'Each version'
print select_odds_using_each([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds_using_each([2, 4, 6])            # => []
puts

def select_odds_using_map(numbers)
  numbers.map { |num| num if num.odd? }.compact.sort
  #   numbers.map(&:odd?).compact
end

puts 'Map version'
print select_odds_using_map([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds_using_map([2, 4, 6])            # => []
puts
