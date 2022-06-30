def get_double_age(hash)
  hash.each do |key, value|
    # puts key
    # puts value
    # print "the new value is #{value * 2} \n"
    # return value * 2 if key == 'age'
    # print "the new value is #{value * 2} \n" if key == 'age'
    return "the new value is #{value * 2} \n" if key == 'age'
  end
end

puts get_double_age({ 'name' => 'App Academy', 'age' => 5 }) # => 10
puts get_double_age({ 'name' => 'Ruby', 'age' => 23 })       # => 46

def another_get_double_age(hash)
  hash['age'] * 2
end

puts 'another method'
puts another_get_double_age({ 'name' => 'App Academy', 'age' => 5 }) # => 10
puts another_get_double_age({ 'name' => 'Ruby', 'age' => 23 })       # => 46
