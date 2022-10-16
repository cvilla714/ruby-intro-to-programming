# frozen_string_literal: true

def element_count(array)
  count = Hash.new(0)
  array.each { |el| count[el] += 1 }
  count
end

def char_replace!(string, hash)
  (0...string.length).each do |i|
    string[i] = hash[string[i]] if hash.key?(string[i])
  end

  string
end

def product_inject(array)
  array.inject { |product, el| product * el }
end
