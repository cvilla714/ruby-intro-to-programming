# frozen_string_literal: true

def element_count(arr)
  count = Hash.new(0)
  arr.each { |element| count[element] += 1 }
  count
end

puts element_count(%w[a b a a b]) #=> {"a"=>3, "b"=>2}
puts element_count(%w[red red blue green]) #=> {"red"=>2, "blue"=>1, "green"=>1}
