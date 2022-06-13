def reverse(word)
    reversed = ""
  
    i = 0
    while i < word.length
      char = word[i]
      reversed = char + reversed
  
      i += 1
    end
  
    return reversed
  end
  
  puts reverse("cat")          # => "tac"
  puts reverse("programming")  # => "gnimmargorp"
  puts reverse("bootcamp")     # => "pmactoob"

puts
puts "new version"
puts
  def reverse_next_version(word)
    new_word = ""
    word.each_char do |letter|
        # puts letter
        new_word = letter + new_word
    end
    return new_word
  end

puts reverse_next_version("cat")          # => "tac"
puts reverse_next_version("programming")  # => "gnimmargorp"
puts reverse_next_version("bootcamp")     # => "pmactoob"