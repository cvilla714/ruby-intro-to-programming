# frozen_string_literal: true

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  if word.match(/^[aeiou]/)
    "#{word}yay"
  else
    "#{word[1..]}#{word[0]}ay"
  end
end

puts pig_latin_word('apple')   # => "appleyay"
puts pig_latin_word('eat')     # => "eatyay"
puts pig_latin_word('banana')  # => "ananabay"
puts pig_latin_word('trash')   # => "ashtray"

def another_pig_latin(word)
  vowels = %w[a e i o u]

  "#{word}yay" if vowels.include?(word[0])

  word.each_char.with_index do |char, idx|
    return "#{word[idx..]}#{word[0...idx]}ay" if vowels.include?(char)
  end
end

puts 'this is another version of the pig latin translator'
puts another_pig_latin('apple')   # => "appleyay"
puts another_pig_latin('eat')     # => "eatyay"
puts another_pig_latin('banana')  # => "ananabay"
puts another_pig_latin('trash')   # => "ashtray"

def new_pig_latin_word(word)
  vowels = 'aeiou'

  return "#{word}yay" if vowels.include?(word[0])

  word.each_char.with_index do |char, i|
    return "#{word[i..]}#{word[0...i]}ay" if vowels.include?(char)
  end
end

puts 'this is the new pig latin translator'
puts new_pig_latin_word('apple')   # => "appleyay"
puts new_pig_latin_word('eat')     # => "eatyay"
puts new_pig_latin_word('banana')  # => "ananabay"
puts new_pig_latin_word('trash')   # => "ashtray"
