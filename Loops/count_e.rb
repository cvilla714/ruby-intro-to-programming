# frozen_string_literal: true

def count_e(word)
  count = 0

  i = 0
  while i < word.length
    char = word[i]

    count += 1 if char == 'e'

    i += 1
  end

  count
end

puts count_e('movie') # => 1
puts count_e('excellent') # => 3

# another way to solve it is to use the each_char method
def count_also(word)
  count = 0
  word.each_char do |char|
    # puts char
    count += 1 if char == 'e'
  end
  count
end

puts count_also('movie') # => 1
puts count_also('excellent') # => 3
