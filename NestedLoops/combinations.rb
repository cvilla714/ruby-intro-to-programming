def combinations(arr)
  new_list = []
  arr.each_with_index do |first_ele, idx1|
    arr.each_with_index do |second_ele, idx2|
      # new_list << "[#{first_ele} #{second_ele}]" if idx1 < idx2
      # new_list << [first_ele.to_s, second_ele.to_s] if idx1 < idx2
      new_list << [first_ele, second_ele] if idx1 < idx2
    end
  end
  new_list
end

print combinations(%w[a b c]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
