def hipsterfy(string)
  last_vowels_index = string.rindex(/[aeiou]/)
  #   letter_to_replace = string[last_vowels_index]

  #   string[0...last_vowels_index] + string[last_vowels_index + 1..-1]
  #   string[0...last_vowels_index] + string[last_vowels_index + 1..]
  #   if string.match(/[aeiou]/)
  # string[0...last_vowels_index] + string[last_vowels_index + 1..]
  #   else
  # string
  #   end
  string.match(/[aeiou]/) ? string[0...last_vowels_index] + string[last_vowels_index + 1..] : string
end

p hipsterfy('hello')
p hipsterfy('swimming')
p hipsterfy('rhythm')
p hipsterfy('my')

def vowel_counts(string)
  string.downcase.chars.each_with_object(Hash.new(0)) do |char, hash|
    hash[char] += 1 if char.match(/[aeiou]/i)
  end
end

def caesar_cipher(string, num)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  new_chars = string.chars.map do |char|
    if alphabet.include?(char)
      new_idx = alphabet.index(char) + num
      alphabet[new_idx % alphabet.length]
    else
      char
    end
  end
  new_chars.join('')
end
