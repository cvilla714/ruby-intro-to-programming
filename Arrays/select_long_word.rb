def select_long_words(words)
  long_words = []

  i = 0
  while i < words.length
    word = words[i]
    long_words << word if word.length > 4

    i += 1
  end

  long_words
end

puts 'Using simple version'
print select_long_words(%w[what are we eating for dinner]) # => ["eating", "dinner"]
puts
print select_long_words(%w[keep coding]) # => ["coding"]
puts

def select_long_words_using_each(words)
  long_words = []

  words.each do |word|
    long_words << word if word.length > 4
  end
  long_words
end

puts 'Using each version'
print select_long_words_using_each(%w[what are we eating for dinner]) # => ["eating", "dinner"]
puts
print select_long_words_using_each(%w[keep coding]) # => ["coding"]
puts

def select_long_words_using_map(words)
  words.map { |word| word if word.length > 4 }
end

puts 'Using map version'
print select_long_words_using_each(%w[what are we eating for dinner]) # => ["eating", "dinner"]
puts
print select_long_words_using_each(%w[keep coding]) # => ["coding"]
puts

def longest_word(words)
  longest = words.sort_by { |word| word.length }.last
  new_logest = []
  words.each do |word|
    new_logest << word if word.length == longest.length
  end
  new_logest
end

puts 'Finding the longest word'
print longest_word(%w[what are we eating for dinner]) # => ["eating", "dinner"]
puts
print longest_word(%w[keep coding])                               # => ["coding
puts
