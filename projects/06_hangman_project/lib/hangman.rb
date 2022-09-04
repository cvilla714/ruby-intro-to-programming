class Hangman
  DICTIONARY = %w[cat dog bootcamp pizza]
  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, '_')
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  attr_reader :guess_word, :attempted_chars, :remaining_incorrect_guesses

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    indices = []
    @secret_word.each_char.with_index do |c, i|
      indices << i if c == char
    end
    indices
  end

  def fill_indices(char, indices)
    indices.each do |i|
      @guess_word[i] = char
    end
  end

  def try_guess(char)
    if already_attempted?(char)
      puts 'that has already been attempted'
      false
    else
      @attempted_chars << char
      if get_matching_indices(char).empty?
        @remaining_incorrect_guesses -= 1
      else
        fill_indices(char, get_matching_indices(char))
      end
      true
    end
  end

  def ask_user_for_guess
    puts 'Enter a char:'
    char = gets.chomp
    try_guess(char)
  end

  def win?
    if @guess_word.join('') == @secret_word
      puts 'WIN'
      true
    else
      false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts 'LOSE'
      true
    else
      false
    end
  end

  def game_over?
    if win? || lose?
      puts @secret_word
      true
    else
      false
    end
  end
end
