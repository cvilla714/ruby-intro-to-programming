# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.

def union(*arrays)
  arrays.flatten
end

puts 'using flatten'
p union(%w[a b], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(%w[x y], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]

def another_union(*arrays)
  arrays.inject { |all_elements, arr| all_elements + arr }
end

puts 'using inject'
p union(%w[a b], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(%w[x y], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]
