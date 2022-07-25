def hipsterfy(string)
  # here i am getting the last vowel in the string
  last_vowels_index = string.rindex(/[aeiou]/)
  #   letter_to_replace = string[last_vowels_index]

  # using the index of the last vowel to get the letter to replace
  #   string[0...last_vowels_index] + string[last_vowels_index + 1..-1]
  #   string[0...last_vowels_index] + string[last_vowels_index + 1..]

  # using a condition to check if the last vowel is the last letter in the string
  #   if string.match(/[aeiou]/)
  # string[0...last_vowels_index] + string[last_vowels_index + 1..]
  #   else
  # string
  #   end

  # here if the string has a vowel, i am replacing the last vowel with a space
  # otherwise i will be returnging the string as is
  string.match(/[aeiou]/) ? string[0...last_vowels_index] + string[last_vowels_index + 1..] : string
end

p hipsterfy('hello')
p hipsterfy('swimming')
p hipsterfy('rhythm')
p hipsterfy('my')

def vowel_counts(string)
  # here i am applying downcase to make sure all vowels are counted as lowercase
  # also applying chars.each_with_object to create a hash with all vowels as keys and values of starging at 0
  string.downcase.chars.each_with_object(Hash.new(0)) do |char, hash|
    # here if the char is a vowel, i am incrementing the value of the key
    hash[char] += 1 if char.match(/[aeiou]/i)
  end
end

def caesar_cipher(string, num)
  # here i am creating a new array of all the letters in the string
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  # here i am iterating over the characters in the string
  new_chars = string.chars.map do |char|
    # here i am checking if the alphabet contains the character is given to me
    if alphabet.include?(char)
      # here i am modifying the new character adding the num to the index of the character
      new_idx = alphabet.index(char) + num
      # here i am returning the new alphabet character at the new index
      alphabet[new_idx % alphabet.length]
    else
      char
    end
  end
  # here i am joining the new characters together to create a new string
  new_chars.join('')
end
