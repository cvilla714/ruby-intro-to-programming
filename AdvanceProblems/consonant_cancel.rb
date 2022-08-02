# frozen_string_literal: true

def replace_letter(word)
  word.each_char.with_index do |char, i|
    return word[i..] if char.match(/[aeiou]/)
  end
end

puts 'testing replace_letter'
puts replace_letter('hello')
puts replace_letter('the')
puts

def consonant_cancel(sentence)
  sentence.split(' ').map { |word| replace_letter(word) }.join(' ')
end

puts 'applying solution'
puts consonant_cancel('down the rabbit hole') #=> "own e abbit ole"
puts consonant_cancel('writing code is challenging') #=> "iting ode is allenging"
puts

def another_consonant_cancel(sentence)
  words = sentence.split
  new_words = words.map { |word| remove_first_consonant(word) }
  new_words.join(' ')
end

def remove_first_consonant(word)
  vowels = 'aeiou'
  word.each_char.with_index do |char, i|
    return word[i..] if vowels.include?(char)
  end
end

puts 'antoher method'
puts another_consonant_cancel('down the rabbit hole') #=> "own e abbit ole"
puts another_consonant_cancel('writing code is challenging') #=> "iting ode is allenging"
