def two_d_translate(arr)
  count = 0
  new_arr = []
  arr.each do |row|
    string = row[0]
    num_of_times = row[1]
    num_of_times.times { new_arr << string }
  end
  new_arr
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts
