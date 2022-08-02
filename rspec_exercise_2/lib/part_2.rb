# frozen_string_literal: true

def palindrome?(string)
  #   string == string.reverse
  new_string = ''
  i = 0

  while i < string.length
    x = string[i]
    new_string = x + new_string
    i += 1
  end

  new_string == string
end

p palindrome?('tot')
p palindrome?('cat')

def substrings(string)
  substrings = []
  i = 0

  while i < string.length
    x = string[i]
    substrings << x
    i += 1
  end

  substrings
end
