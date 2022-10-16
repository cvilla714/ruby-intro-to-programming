# frozen_string_literal: true

# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require 'byebug'
def prime?(num)
  return false if num < 2

  (2...num).each do |i|
    return false if (num % i).zero?
  end
  true
end

def largest_prime_factor(num)
  num.downto(2) do |factor|
    return factor if (num % factor).zero? && prime?(factor)
  end
end

# one way to do it ,counting unique charaters
# def unique_chars?(str)
# chars = str.chars
# chars.each do |char|
# return false if chars.count(char) > 1
# end
# true
# end

# another way to do it, using buiid in method unique
# def unique_chars?(str)
# chars = str.chars
# chars.uniq == chars
# end

# another way to do it, using buiid in an array
# def unique_chars?(str)
# alrady_seen = []
# str.each_char do |char|
# return false if alrady_seen.include?(char)
#
# alrady_seen << char
# end
# true
# end

# another way to do it, using buiid in a hash
def unique_chars?(str)
  alrady_seen = {}
  str.each_char do |char|
    return false if alrady_seen.include?(char)

    alrady_seen[char] = true
  end
  true
end

# def dupe_indices(arr)
# alrady_seen = {}
# arr.each_with_index do |char, index|
# alrady_seen[char] = [] if alrady_seen[char].nil?
# alrady_seen[char] << index
# end
# alrady_seen.select { |_, v| v.length > 1 }
# end

def dupe_indices(arr)
  indices = Hash.new { |h, k| h[k] = [] }
  arr.each_with_index do |char, index|
    indices[char] << index
  end
  indices.select { |_char, v| v.length > 1 }
end

def ele_count(array)
  count = Hash.new(0)
  array.each { |ele| count[ele] += 1 }

  count
end

def ana_array(arr1, arr2)
  count1 = ele_count(arr1)
  count2 = ele_count(arr2)
  count1 == count2
end
