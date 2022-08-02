# frozen_string_literal: true

def anagrams?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

puts 'using sort'
puts anagrams?('cat', 'act')          #=> true
puts anagrams?('restful', 'fluster')  #=> true
puts anagrams?('cat', 'dog')          #=> false
puts anagrams?('boot', 'bootcamp')    #=> false

def another_anagrams?(word1, word2)
  count = Hash.new(0)
  word1.chars.each { |char| count[char] += 1 }
  word2.chars.each { |char| count[char] -= 1 }
  count.values.all?(&:zero?)
end

puts 'another_anagrams'
puts another_anagrams?('cat', 'act')          #=> true
puts another_anagrams?('restful', 'fluster')  #=> true
puts another_anagrams?('cat', 'dog')          #=> false
puts another_anagrams?('boot', 'bootcamp')    #=> false

def extra_anagrams?(word1, word2)
  char_count(word1) == char_count(word2)
end

def char_count(word)
  count = Hash.new(0)
  word.chars.each { |char| count[char] += 1 }
  count
end

puts 'extra anagrams'
puts extra_anagrams?('cat', 'act')          #=> true
puts extra_anagrams?('restful', 'fluster')  #=> true
puts extra_anagrams?('cat', 'dog')          #=> false
puts extra_anagrams?('boot', 'bootcamp')    #=> false
