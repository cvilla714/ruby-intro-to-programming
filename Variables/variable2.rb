sentence = "There is no spoon"
puts "---1:"
puts sentence + "?"   # ? ---1:There is no spoon?

puts "---2:"
puts sentence         # ? ---2:There is no spoon?

sentence += "."
puts "---3:"
puts sentence         # ? There is no spoon.---3:

num = 6 / 2
puts "---4:"
puts num              # ? ---4: 3 

puts "---5:"
puts sentence[num]    # ? ---5: 