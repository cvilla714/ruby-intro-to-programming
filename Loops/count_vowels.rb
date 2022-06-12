def count_vowels(word)
    num_vowels = 0
  
    i = 0
    while i < word.length
      char = word[i]
  
      if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
        num_vowels += 1
      end
  
      i += 1
    end
  
    return num_vowels
  end
  
  puts count_vowels("bootcamp")  # => 3
  puts count_vowels("apple")     # => 2
  puts count_vowels("pizza")     # => 2


def count_vowels_second_version(word)
    num_vowels = 0
    word.each_char do |char|
        if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
            num_vowels += 1
        end
    end
    return num_vowels    
end

puts count_vowels_second_version("bootcamp")  # => 3
puts count_vowels_second_version("apple")     # => 2
puts count_vowels_second_version("pizza")     # => 2