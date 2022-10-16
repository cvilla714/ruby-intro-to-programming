# frozen_string_literal: true

def all_words_capitalized?(words)
  #   words.all?(&:capitalize)
  words.all? { |word| word.capitalize == word }
end

def no_valid_url?(urls)
  urls.none? { |url| url.end_with?('.com', '.net', '.io', '.org') }
end

def any_passing_students?(students)
  students.any? do |student|
    student[:grades].sum / student[:grades].size >= 75
  end
end
