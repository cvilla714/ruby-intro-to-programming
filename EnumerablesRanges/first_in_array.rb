# frozen_string_literal: true

def first_in_array(arr, el1, el2)
  arr.each_with_index do |_char, idx|
    # puts char, idxss
    if el1[idx] < el2[idx]
      return el1
    else
      return el2
    end
  end
end

puts first_in_array(%w[a b c d], 'd', 'b'); # => "b"
puts first_in_array(%w[cat bird dog mouse], 'dog', 'mouse'); # => "dog"

def second_version_first_in_array(arr, el1, el2)
  if arr.index(el1) < arr.index(el2)
    el1
  else
    el2
  end
end

puts second_version_first_in_array(%w[a b c d], 'd', 'b'); # => "b"
puts second_version_first_in_array(%w[cat bird dog mouse], 'dog', 'mouse'); # => "dog"
