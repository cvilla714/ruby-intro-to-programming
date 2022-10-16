# frozen_string_literal: true

def average(numb_1, numb_2)
  (numb_1 + numb_2) / 2.0
end

puts average(4, 8) #=> 12
puts average(5, 10) #=> 7.5

def average_array(array)
  array.sum / array.length.to_f
end

def repeat(string, num)
  new_str = ''
  num.times { new_str << string }
  new_str
end

p repeat('hello', 3) #=> hellohellohello

def yell(str)
  "#{str.upcase}!"
end

puts yell('goodBYE') #=> GOODBYE
def alternating_case(str)
  str.split.map.with_index do |word, idx|
    idx.even? ? word.upcase : word.downcase
  end.join(' ')
end

puts alternating_case('code never lies, comments sometimes do.') #=> CODE never LIES, COMMENTS SOMETIMES DO.
