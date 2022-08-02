# frozen_string_literal: true

arr = %w[apple bootCAMP caRrot DaNcE]

new_arr = arr.map(&:capitalize)
print new_arr
puts

another_arr = %w[apple bootCAMP caRrot DaNcE]

puts ' using &: '
next_arr = another_arr.map(&:capitalize)
print next_arr
puts
