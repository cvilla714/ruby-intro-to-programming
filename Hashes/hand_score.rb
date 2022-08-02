# frozen_string_literal: true

def hand_score(hand)
  score = { 'A' => 4, 'K' => 3, 'Q' => 2, 'J' => 1, 'a' => 4, 'k' => 3, 'q' => 2, 'j' => 1 }
  hand.split('').map { |card| score[card] }.sum
end

puts hand_score('AQAJ') #=> 11
puts hand_score('jJka') #=> 9

def another_hand_score(hand)
  score = { 'A' => 4, 'K' => 3, 'Q' => 2, 'J' => 1 }
  #   hand.each_char { |card| puts card.upcase }
  counter = 0
  hand.each_char { |card| counter += score[card.upcase] }
  counter
end

puts ' another_hand_score '
puts another_hand_score('AQAJ') #=> 11
puts another_hand_score('jJka') #=> 9

def improve_hand_score(hand)
  score = { 'A' => 4, 'K' => 3, 'Q' => 2, 'J' => 1 }
  counter = 0

  hand.split('').map { |card| counter = score[card.upcase] }.sum
end

puts ' improve_hand_score '
puts improve_hand_score('AQAJ') #=> 11
puts improve_hand_score('jJka') #=> 9

adding_hash = { 'a' => 1, 'b' => 2, 'c' => 3 }
adding_hash.values.sum
print adding_hash
puts

array = [1, 2, 3]
puts array
puts "this is what sum does add all elements inside the array the result is  #{array.sum}"
