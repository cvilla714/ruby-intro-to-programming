def sum_nums(max)

    sum = 0
    i= 0 
    while i <= max
      
      sum += i
      puts i
      
      i+=1
      
      
    end
   puts sum
  end
   
  puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
  puts sum_nums(5) # => 15

  def sum_nums(max)
    range = (1..max)
    sum = 0
    for i in range
        # puts i
        sum+=i 
    end
    return sum
  end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15