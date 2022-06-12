# def count_a(word)
    # count = 0
#   
    # i = 0
    # while i < word.length
    #   char = word[i]
#   
    #   if char == "a" || char == "A"
        # count += 1
    #   end
#   
    #   i += 1
    # end
#   
    # return count
#   end
#   
#   puts count_a("application")  # => 2
#   puts count_a("bike")         # => 0
#   puts count_a("Arthur")       # => 1
#   puts count_a("Aardvark")     # => 3
# 
  def count_another_a(word)
    counter = 0
    word.each_char do |char|
        # puts char
        if char == "a" || char == "A"
            counter += 1
        end
    end
    return counter
  end

puts count_another_a("application")  # => 2
puts count_another_a("bike")         # => 0
puts count_another_a("Arthur")       # => 1
puts count_another_a("Aardvark")     # => 3