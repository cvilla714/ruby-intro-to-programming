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

def another_palindrome?(string)
  string.each_char.with_index do |_char, i|
    return false if string[i] != string[-i - 1]
  end
  true
end

puts 'using each_char.with_index'
p another_palindrome?('tot')
p another_palindrome?('racecar')
p another_palindrome?('madam')
p another_palindrome?('aa')
p another_palindrome?('a')
p another_palindrome?('cat')
p another_palindrome?('greek')
p another_palindrome?('xabcx')

def substrings(string)
  subs = []
  (0...string.length).each do |start_index|
    (start_index...string.length).each do |end_index|
      subs << string[start_index..end_index]
    end
  end
  subs
end

puts 'using two loops'
p substrings('jump')
p substrings('abc')
p substrings('x')

def palindrome_substrings(string)
  substrings(string).select { |subst| palindrome?(subst) && subst.length > 1 }
end
