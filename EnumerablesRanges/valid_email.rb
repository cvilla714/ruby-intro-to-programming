# frozen_string_literal: true

def is_valid_email(str)
  # here i am splitting the string into two parts using the @ symbol
  parts = str.split('@')
  # if the string does not have an @ symbol, it is not a valid email
  # or if i get more than one @ symbol, it is not a valid email
  # or if i get back more than 2 parts is not valied email
  return false if parts.length != 2

  # if the first part of the string is empty, it is not a valid email
  # or if the second part of the string is empty, it is not a valid email

  first = parts[0]
  second = parts[1]
  alpha = 'abcdefghijklmnopqrstuvwxyz'

  # or if the first part doesn't have the letters in alpahabetical order is not a valid email
  first.each_char do |char|
    return false unless alpha.include?(char)
  end

  second.split('.').length == 2
end

puts is_valid_email('abc@xy.z')         # => true
puts is_valid_email('jdoe@gmail.com')   # => true
puts is_valid_email('jdoe@g@mail.com')  # => false
puts is_valid_email('jdoe42@gmail.com') # => false
puts is_valid_email('jdoegmail.com')    # => false
puts is_valid_email('az@email')         # => false
