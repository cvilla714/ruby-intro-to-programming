def word_lengths(sentence)
  words = sentence.split

  #   puts words
  new_words = []
  words.each do |word|
    new_words << "#{word}=>#{word.length}"
  end
  new_words.join(',')
end

puts word_lengths('this is fun') #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths('When in doubt, leave it out') #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}

def another_word_lengths(sentence)
  words = sentence.split(' ')
  lengths = {}

  words.each { |word| lengths[word] = word.length }

  lengths
end

puts 'another version'
puts another_word_lengths('this is fun') #=> {"this"=>4, "is"=>2, "fun"=>3}
puts another_word_lengths('When in doubt, leave it out') #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}
