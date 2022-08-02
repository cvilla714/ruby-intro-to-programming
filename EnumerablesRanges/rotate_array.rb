# frozen_string_literal: true

def rotate_array(arr, num)
  num.times do
    arr.unshift(arr.pop)
  end
  arr
end

print rotate_array(%w[Matt Danny Mashu Matthias], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array(%w[a b c d], 2) # => [ "c", "d", "a", "b" ]

print rotate_array(%w[a b c d], 3) # => [ "c", "d", "a", "b" ]
puts
