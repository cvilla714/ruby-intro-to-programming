# frozen_string_literal: true

def partition(arr, num)
  less = []
  greater = []
  arr.each do |ele|
    ele < num ? less << ele : greater << ele
  end
  [less, greater]
end

def another_merge(hash1, hash2)
  hash1.merge(hash2)
end

hash1 = { 'a' => 10, 'b' => 20 }
hash2 = { 'c' => 30, 'd' => 40, 'e' => 50 }

p another_merge(hash1, hash2)

def merge(hash1, hash2)
  new_hash = {}
  hash1.each { |key, value| new_hash[key] = value }
  hash2.each { |key, value| new_hash[key] = value }
  new_hash
end

hash1 = { 'a' => 10, 'b' => 20 }
hash2 = { 'c' => 30, 'd' => 40, 'e' => 50 }

p merge(hash1, hash2)

def censor(sentence, curse_words)
  # split the sentnece into words
  words = sentence.split(' ')
  # iterate over the words
  words.map do |word|
    # if the curse word is in the word
    if curse_words.include?(word.downcase)
      # replace the vowels with * // really important to use the exclamation point
      # this will force to modify the string in place
      word.gsub!(/[aeiou]/i, '*')
    else
      # othjerwise, return the word
      word
    end
  end
  # join the words back together
  words.join(' ')
end

puts 'using regular if statement'
p censor('Gosh darn it', %w[gosh darn shoot])

def another_censor(sentence, curse_words)
  words = sentence.split(' ')
  words.map do |word|
    curse_words.include?(word.downcase) ? word.gsub!(/[aeiou]/i, '*') : word
  end
  words.join(' ')
end

puts 'using ternary operator'
p another_censor('Gosh darn it', %w[gosh darn shoot])

def power_of_two?(number)
  number.to_s(2).count('1') == 1
end

puts 'using some built-in methods'
p power_of_two?(16)
p power_of_two?(32)
p power_of_two?(64)
p power_of_two?(100)
p power_of_two?(28)

def another_power_of_two?(number)
  product = 1
  product *= 2 while product < number
  product == number
end

puts 'using while loop'
p another_power_of_two?(16)
p another_power_of_two?(32)
p another_power_of_two?(64)
p another_power_of_two?(100)
p another_power_of_two?(28)

# puts lava.gsub(/[aeiou]/, '*')

# Ruby program to demonstrate
# the gsub! method

# Taking a string and
# using the method
puts 'Sample'.gsub!(/[ae]/, '*')
puts 'Gosh'.gsub!(/[aeiou]/, '*')
puts 'darn'.gsub!(/[aeiou]/, '*')
puts 'it'.gsub!(/[aeiou]/, '*')
puts 'DOOR'.gsub!(/[aeiou]/i, '*')
puts 'testsing'
ignored_words = %w[AND THE OF IN FOR]
puts 'roxy@putsbox.com'.gsub(/[^A-Za-z ]/, '').upcase.split.delete_if { |x| ignored_words.include?(x) }
# string_array = stripped_name.upcase.split.delete_if { |x| ignored_words.include?(x) }
