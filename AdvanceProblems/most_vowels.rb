# frozen_string_literal: true

def count_vowels(word)
  vowels = %w[a e i o u]
  counter = 0
  word.each_char { |letter| counter += 1 if vowels.include?(letter) }
  counter
end

def oneline(word)
  counter = 0
  word.split('').map { |letter| counter += 1 if letter.match(/[aeiou]/i) }
  counter
end

puts 'using oneline method uses match instead of include'
puts oneline('wonderful') #=> 3
puts oneline('what') #=> 1
puts oneline('world') #=> 1
puts

puts 'using count_vowels method'
print count_vowels('wonderful') #=> 3
print count_vowels('what') #=> 1
print count_vowels('world') #=> 1
puts

def most_vowels(sentence)
  sentence.split.max_by { |word| count_vowels(word) }
end

puts
puts 'using most_vowels method combining split and max_by'
print most_vowels('what a wonderful life') #=> "wonderful"
puts

def another_most_vowels(sentence)
  sentence.split.map { |word| count_vowels(word) }
end

puts
puts 'using another_most_vowels method using only map we get the total vowels for each word'
print another_most_vowels('what a wonderful life') #=> "wonderful"
puts

def using_select_most_vowels(sentence)
  sentence.split.select { |word| oneline(word) }.max
end

puts
puts 'using_select_most_vowels method will get the word with the most vowels'
print using_select_most_vowels('what a wonderful life') #=> "wonderful"
puts
