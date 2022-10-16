# frozen_string_literal: true

def select_even_nums(arr)
  arr.select(&:even?)
end

def reject_puppies(dogs)
  dogs.reject { |dog| dog['age'] <= 2 }
end

def count_positive_subarrays(arr)
  arr.count { |sub_arr| sub_arr.sum.positive? }
  #   arr.count(&:sum > 0)
end

def aba_translate(str)
  vowels = 'aeiou'
  new_word = ''
  str.each_char do |char|
    new_word += if vowels.include?(char)
                  "#{char}b#{char}"
                else
                  char
                end
  end
  new_word
end

def aba_array(arr)
  arr.map { |word| aba_translate(word) }
end
