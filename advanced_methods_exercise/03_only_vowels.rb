# frozen_string_literal: true

# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.

def only_vowels?(str)
  #   str.chars.all? { |char| char =~ /[aeiou]/i }
  str.chars.all? { |char| char.match(/[aeiou]/i) }
end

p only_vowels?('aaoeee')  # => true
p only_vowels?('iou')     # => true
p only_vowels?('cat')     # => false
p only_vowels?('over')    # => false
