# frozen_string_literal: true

def word_check(word)
  if word.length > 6
    'long'
  elsif word.length < 6
    'short'
  else
    'medium'
  end
end

puts word_check('contraption') # => "long"
puts word_check('fruit')       # => "short"
puts word_check('puzzle')      # => "medium"
