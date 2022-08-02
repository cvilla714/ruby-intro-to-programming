# frozen_string_literal: true

def vowel_cipher(string)
  vowels = 'aeiou'
  string.split('').map do |char|
    if vowels.include?(char)
      vowels[(vowels.index(char) + 1) % 5]
    else
      char
    end
  end.join('')
end

puts 'using map'
puts vowel_cipher('bootcamp') #=> buutcemp
puts vowel_cipher('paper cup') #=> pepir cap
puts

def another_vowel_cipher(string)
  vowels = 'aeiou'

  new_chars = string.split('').map do |char|
    if vowels.include?(char)
      old_idx = vowels.index(char)
      new_idx = old_idx + 1
      vowels[new_idx % vowels.length]
    else
      char
    end
  end

  new_chars.join('')
end

puts 'using map and vowels.length'
puts another_vowel_cipher('bootcamp') #=> buutcemp
puts another_vowel_cipher('paper cup') #=> pepir cap
puts
