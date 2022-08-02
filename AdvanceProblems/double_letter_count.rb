# frozen_string_literal: true

def double_letter_count(string)
  string.chars.each_with_object(Hash.new(0)) do |char, hash|
    hash[char] += 1
  end.select { |_, count| count == 2 }.keys.size
end

puts ' using char.each_with_object'
puts double_letter_count('the jeep rolled down the hill') #=> 3
puts double_letter_count('bootcamp') #=> 1
puts

def another_double_letter_count(string)
  count = 0

  string.each_char.with_index do |_char, i|
    count += 1 if string[i] == string[i + 1]
  end

  count
end

puts ' using each_char and with_index'
puts another_double_letter_count('the jeep rolled down the hill') #=> 3
puts another_double_letter_count('bootcamp') #=> 1
