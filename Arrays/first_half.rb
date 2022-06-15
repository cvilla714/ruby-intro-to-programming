def first_half(array)
  half = []
  i = 0
  while i < array.length / 2.0
    half << array[i]
    i += 1
  end
  half
end

puts 'Using simple version'
print first_half(%w[Brian Abby David Ommi]) # => ["Brian", "Abby"]
puts
print first_half(%w[a b c d e]) # => ["a", "b", "c"]
puts

def first_half_each_verson(array)
  half = []
  array.each_with_index do |element, idx|
    half << element if idx < array.length / 2.0
  end
  half
end

puts 'Using each version'
print first_half_each_verson(%w[Brian Abby David Ommi]) # => ["Brian", "Abby"]
puts
print first_half_each_verson(%w[a b c d e])          # => ["a", "b", "c"]
puts
