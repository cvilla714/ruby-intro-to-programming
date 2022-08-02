# frozen_string_literal: true

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
  parts = str.split(' ')
  return false if parts.length < 2

  parts.each do |part|
    return false if part.capitalize != part
  end
  true
end

puts is_valid_name('Kush Patel')       # => true
puts is_valid_name('Daniel')           # => false
puts is_valid_name('Robert Downey Jr') # => true
puts is_valid_name('ROBERT DOWNEY JR') # => false

def another_is_valid_name(str)
  parts = str.split(' ')
  return false if parts.length < 2

  parts.each do |part|
    return false unless another_is_capitalized(part)
  end

  true
end

def another_is_capitalized(word)
  if word[0] == word[0].upcase && word[1..] == word[1..].downcase
    true
  else
    false
  end
end

puts another_is_valid_name('Kush Patel')       # => true
puts another_is_valid_name('Daniel')           # => false
puts another_is_valid_name('Robert Downey Jr') # => true
puts another_is_valid_name('ROBERT DOWNEY JR') # => false
