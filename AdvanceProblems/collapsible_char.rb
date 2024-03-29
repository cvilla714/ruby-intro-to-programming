# frozen_string_literal: true

def same_char_collapse(str)
  reducible = true

  while reducible
    chars = str.split('')
    reducible = false

    chars.each.with_index do |_char, i|
      if chars[i] == chars[i + 1]
        chars[i] = ''
        chars[i + 1] = ''
        reducible = true
      end
    end

    str = chars.join('')
  end

  str
end

puts same_char_collapse('zzzxaaxy') #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy

puts same_char_collapse('uqrssrqvtt') #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
