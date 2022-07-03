def last_index(str, char)
  #   str.split('').map.with_index { |letter, idx| print [letter, idx] }
  str.split('').select.with_index { |_letter, idx| idx == char }
end

puts last_index('abca', 'a')       #=> 3
puts last_index('mississipi', 'i') #=> 9
puts last_index('octagon', 'o')    #=> 5
puts last_index('programming', 'm') #=> 7
