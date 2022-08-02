# frozen_string_literal: true

def whisper_words(words)
  words.map { |item| "#{item.downcase}..." }
end

print whisper_words(%w[KEEP The NOISE down]) # => ["keep...", "the...", "noise...", "down..."]
puts
