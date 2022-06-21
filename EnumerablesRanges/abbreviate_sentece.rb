def abbreviate_sentence(sent)
  # first split the sentence into words
  words = sent.split(' ')

  # print words
  # puts
  # create a new array to hold the abbreviated words
  new_words = []
  # iterate over each word that was split
  words.each do |word|
    # print word
    # fill the new_words array with the abbreviated word only if it is longer than 4 characters
    new_words << if word.length > 4
                   # method that will give back the word without vowels
                   abbreviate(word)
                 else
                   # otherwise just give back the word
                   word
                 end
  end
  # join the new_words array into a string
  new_words.join(' ')
end

# method that will give back the word without vowels
def abbreviate(word)
  # create a string that holds the vowels
  vowels = 'aeiou'
  # iterate each character in the word
  word.each_char do |letter|
    # if the letter is a vowel substitute it with an empty string
    word.gsub!(letter, '') if vowels.include?(letter)
  end
  word
end

puts abbreviate('star') #=> str
puts abbreviate_sentence('follow the yellow brick road') # => "fllw the yllw brck road"
puts abbreviate_sentence('what a wonderful life')        # => "what a wndrfl life"



def another_abbreviate_sentence(sent)
  words = sent.split(" ")
  new_words = []

  words.each do |word|
    if word.length > 4
      new_word = another_abbreviate_word(word)
      new_words << new_word
    else
      new_words << word
    end
  end

  return new_words.join(" ")
end

def another_abbreviate_word(word)
  vowels = "aeiou"
  new_word = ""

  word.each_char do |char|
    if !vowels.include?(char)
      new_word += char
    end
  end

  return new_word
end

puts another_abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts another_abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"