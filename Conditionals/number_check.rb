# frozen_string_literal: true

def number_check(num)
  if num.positive?
    'positive'
  elsif num.negative?
    'negative'
  else
    'zero'
  end
end

puts number_check(5)    # => "positive"
puts number_check(-2)   # => "negative"
puts number_check(0)    # => "zero"
