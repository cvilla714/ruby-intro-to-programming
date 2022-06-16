# frozen_string_literal: true

def count_vowels(word)
  num_vowels = 0

  i = 0
  while i < word.length
    char = word[i]

    num_vowels += 1 if %w[a e i o u].include?(char)

    i += 1
  end

  num_vowels
end

puts count_vowels('bootcamp')  # => 3
puts count_vowels('apple')     # => 2
puts count_vowels('pizza')     # => 2

def count_vowels_second_version(word)
  num_vowels = 0
  word.each_char do |char|
    num_vowels += 1 if %w[a e i o u].include?(char)
  end
  num_vowels
end

puts count_vowels_second_version('bootcamp')  # => 3
puts count_vowels_second_version('apple')     # => 2
puts count_vowels_second_version('pizza')     # => 2
