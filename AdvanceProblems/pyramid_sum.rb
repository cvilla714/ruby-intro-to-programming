# frozen_string_literal: true

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def adjacent_sum(arr)
  new_arr = []

  arr.each_with_index do |ele, i|
    # new_arr << arr[i] + arr[i + 1] if i != arr.length - 1
    new_arr << ele + arr[i + 1] if i != arr.length - 1
  end

  new_arr
end

# print adjacent_sum([1, 4, 6]) #==> [5, 10]

def pyramid_sum(base)
  pyramid = [base]
  # pyramid << adjacent_sum(pyramid.last) while pyramid.length < base.length
  pyramid.unshift(adjacent_sum(pyramid.first)) while pyramid.length < base.length
  pyramid
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts
