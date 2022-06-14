def yell(words)
  yelled = []

  i = 0
  while i < words.length
    word = words[i]
    yelled_word = word + '!'
    yelled << yelled_word

    i += 1
  end

  yelled
end

puts 'Using simple version'
print yell(%w[hello world]) # => ["hello!", "world!"]
puts
print yell(%w[code is cool]) # => ["code!", "is!", "cool!"]

def yell_new_version(words)
  words.map { |word| word + '!' }
end

puts
puts 'Using for map version'
print yell_new_version(%w[hello world]) # => ["hello!", "world!"]
puts
print yell_new_version(%w[code is cool]) # => ["code!", "is!", "cool!"]

def yell_using_for_each(words)
  yelled = []

  words.each do |word|
    yelled << word + '!'
  end
  yelled
end

puts
puts 'Using  foreach version'
print yell_using_for_each(%w[hello world]) # => ["hello!", "world!"]
puts
print yell_using_for_each(%w[code is cool]) # => ["code!", "is!", "cool!"]
