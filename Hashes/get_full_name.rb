# frozen_string_literal: true

def get_full_name(hash)
  "#{hash['first']} #{hash['last']} #{hash['title']}"
end

hash1 = { 'first' => 'Michael', 'last' => 'Jordan', 'title' => 'GOAT' }
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = { 'first' => 'Fido', 'last' => 'McDog', 'title' => 'Loyal' }
puts get_full_name(hash2) # => "Fido McDog, the Loyal"

def another_get_full_name(hash)
  "#{hash['first']} #{hash['last']}, the #{hash['title']}"
end

hash1 = { 'first' => 'Michael', 'last' => 'Jordan', 'title' => 'GOAT' }
puts another_get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = { 'first' => 'Fido', 'last' => 'McDog', 'title' => 'Loyal' }
puts another_get_full_name(hash2) # => "Fido McDog, the Loyal"
