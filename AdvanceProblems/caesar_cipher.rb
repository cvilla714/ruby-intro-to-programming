# frozen_string_literal: true

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  str.split('').map do |char|
    if alphabet.include?(char)
      alphabet[(alphabet.index(char) + num) % 26]
    else
      char
    end
  end.join('')
end

puts caesar_cipher('apple', 1)    #=> "bqqmf"
puts caesar_cipher('bootcamp', 2) #=> "dqqvecor"
puts caesar_cipher('zebra', 4)    #=> "difve"
