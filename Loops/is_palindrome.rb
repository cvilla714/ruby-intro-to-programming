# frozen_string_literal: true

def is_palindrome(word)
  palindrome = ''
  i = 0

  while i < word.length
    x = word[i]
    palindrome = x + palindrome
    i += 1
  end

  palindrome == word
  # return palindrome
end

puts is_palindrome('racecar')  # => true
puts is_palindrome('kayak')    # => true
puts is_palindrome('bootcamp') # => false
