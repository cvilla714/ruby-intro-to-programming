def reverse_words(sent)
  #   sent.split.map { |word| word.reverse }.join(' ')
  sent.split.map(&:reverse).join(' ')
end

puts 'Simple version'
puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
puts

def another_reverse_word(sent)
  words = sent.split(' ')
  new_words = []
  words.each { |word| new_words << word.reverse }
  new_words.join(' ')
end

puts 'Each version'
puts another_reverse_word('keep coding') # => 'peek gnidoc'
puts another_reverse_word('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
puts
