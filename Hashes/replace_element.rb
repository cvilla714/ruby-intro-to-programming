# frozen_string_literal: true

def element_replace(arr, hash)
  new_arr = []
  arr.each do |ele|
    new_arr << if hash.key?(ele)
                 hash[ele]
               else
                 ele

               end
  end
  new_arr
end

arr1 = ['LeBron James', 'Lionel Messi', 'Serena Williams']
hash1 = { 'Serena Williams' => 'tennis', 'LeBron James' => 'basketball' }
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = %w[dog cat mouse]
hash2 = { 'dog' => 'bork', 'cat' => 'meow', 'duck' => 'quack' }
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts
