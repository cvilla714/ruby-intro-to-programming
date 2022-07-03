# Hint: all keys of a hash are automatically unique

def unique_elements(arr)
  count = Hash.new(0)
  arr.each { |element| count[element] += 1 }
  #   count
  count.keys
end

print unique_elements(%w[a b a a b c]) #=> ["a", "b", "c"]
puts
