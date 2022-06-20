def to_initials(name)
  new_string = ''

  name.each_char do |letter|
    new_string << letter if letter == letter.upcase
  end
  new_string
end

puts to_initials('Kelvin Bridges')      # => "KB"
puts to_initials('Michaela Yamamoto')   # => "MY"
puts to_initials('Mary La Grange')      # => "MLG"

def another_to_initials(name)
  parts = name.split(' ')
  initials = ''
  parts.each { |part| initials += part[0] }
  initials
end

puts another_to_initials('Kelvin Bridges')      # => "KB"
puts another_to_initials('Michaela Yamamoto')   # => "MY"
puts another_to_initials('Mary La Grange')      # => "MLG"

def third_to_initials(name)
  initials_group = ''
  name.split('').each do |letter|
    initials_group << letter if letter == letter.upcase
    # puts letter if letter == letter.upcase
  end
  initials_group
end

puts third_to_initials('Kelvin Bridges')      # => "KB"
puts third_to_initials('Michaela Yamamoto')   # => "MY"
puts third_to_initials('Mary La Grange')      # => "MLG"
