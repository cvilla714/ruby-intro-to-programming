# frozen_string_literal: true

def array_translate(array)
  new_word = ''
  array.each_with_index do |word, idx|
    current_index = word[idx]
    # previous_word_index = word[idx - 1]
    # previous_word =word[previous_word_index]
    current_number = word
    next unless current_index.is_a?(Integer)

    # current_number.times { new_word << previous_word }

    # puts "this is the current index: #{current_index}"
    # puts "this is the previous word index is : #{previous_word_index}"
    puts "this is the current number: #{current_number}"
    # puts "this is the previous word: #{previous_word}"
    # current_index.times { new_word << previous_word }
  end
  new_word
end

print array_translate(['Cat', 2, 'Dog', 3, 'Mouse', 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(['red', 3, 'blue', 1]); # => "redredredblue"
puts

def another_array_translate(array)
  str = ''

  i = 0
  while i < array.length
    ele = array[i]
    num = array[i + 1]
    num.times { str += ele }

    i += 2
  end

  str
end

puts 'using the while loop'
print another_array_translate(['Cat', 2, 'Dog', 3, 'Mouse', 1]); # => "CatCatDogDogDogMouse"
puts

print another_array_translate(['red', 3, 'blue', 1]); # => "redredredblue"
puts

def new_array_translate(array)
  new_word = ''
  array.each_with_index do |word, idx|
    if word.is_a?(Integer)
      current_index = idx
      new_word << array[current_index - 1] * word
    end
  end
  new_word
end

puts ' the last version'
print new_array_translate(['Cat', 2, 'Dog', 3, 'Mouse', 1]); # => "CatCatDogDogDogMouse"
puts

print new_array_translate(['red', 3, 'blue', 1]); # => "redredredblue"
puts
