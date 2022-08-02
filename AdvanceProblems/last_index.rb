# frozen_string_literal: true

def last_index(str, char)
  #   str.split('').map.with_index { |letter, idx| print [letter, idx] }
  str.split('').map.with_index { |letter, idx| idx if letter.match(char) }.compact!.last
end

puts 'using map'
puts last_index('abca', 'a')       #=> 3
puts last_index('mississipi', 'i') #=> 9
puts last_index('octagon', 'o')    #=> 5
puts last_index('programming', 'm') #=> 7

# def another_last_index(str, char)
# str.each_char.with_index do |ch, idx|
# [ch, idx]
# end.to_h[char]
# end
#
# puts 'another method'
# puts another_last_index('abca', 'a')       #=> 3
# puts another_last_index('mississipi', 'i') #=> 9
# puts another_last_index('octagon', 'o')    #=> 5
# puts another_last_index('programming', 'm') #=> 7
#
