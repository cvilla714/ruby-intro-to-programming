# frozen_string_literal: true

num = 40
num + 5
puts '---1:'
puts num                   # ? ---1:40

num += 2
puts '---2:'
puts num                   # ?---2:42

isEven = num.even?
puts '---3:'
puts isEven                # ?---3:true

isNegative = num.negative?
puts '---4:'
puts isNegative            # ?---4:false

puts '---5:'
puts isEven || isNegative  # ?---5:true

puts '---6:'
puts isEven && isNegative  # ?---6:false

puts '---7:'
puts isEven && !isNegative # ? ---7:true
