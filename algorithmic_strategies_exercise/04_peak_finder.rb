# frozen_string_literal: true

# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

def peak_helper(arr)
  arr_help = []
  #   (0...arr.length - 1).each do |i|
  # arr_help << i if arr[i] > arr[i - 1] && arr[i] > arr[i + 1]
  arr.each_with_index do |element, index|
    arr_help << element if element > arr[index - 1] && element > arr[index + 1]
  end
  arr_help
end
p peak_helper([1, 3, 5, 4]) # => [5]
# p peak_helper([4, 2, 3, 6, 10]) # => [4, 10]
def peak_finder(arr)
  peaks = []

  arr.each_with_index do |middle, index|
    left = arr[index - 1]
    right = arr[index + 1]
    if index.zero? && middle > right
      peaks << middle
    elsif index == arr.length - 1 && middle > left
      peaks << middle
    elsif middle > left && middle > right
      peaks << middle
    end
  end
  peaks
end

p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
p peak_finder([1, 3])               # => [3]
p peak_finder([3, 1])               # => [3]
#
