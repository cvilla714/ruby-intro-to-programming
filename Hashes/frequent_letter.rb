# frozen_string_literal: true

def frequent_letters(string)
  letter = Hash.new(0)
  string.each_char { |char| letter[char] += 1 }
  frequent = []
  letter.each { |key, value| frequent << key if value > 2 }
  frequent
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts
