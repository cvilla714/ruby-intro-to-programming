# frozen_string_literal: true

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  str.split(' ').each(&:capitalize!).join(' ')
end

puts format_name('chase WILSON') # => "Chase Wilson"
puts format_name('brian CrAwFoRd scoTT') # => "Brian Crawford Scott"

def another_format_name(str)
  parts = str.split(' ')
  new_parts = []

  parts.each do |part|
    new_parts << part[0].upcase + part[1..].downcase
  end

  new_parts.join(' ')
end

puts another_format_name('chase WILSON') # => "Chase Wilson"
puts another_format_name('brian CrAwFoRd scoTT') # => "Brian Crawford Scott"
