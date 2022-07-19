# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
  count = Hash.new(0)
  str.each_char { |char| count[char] += 1 }
  #   count.map { |char, count| "#{count}#{char}" }.join
  count.map do |char, count|
    if count > 1
      "#{count}#{char}"
    else
      char
    end
  end
end

p compress_str('aaabbc')        # => "3a2bc"
p compress_str('xxyyyyzz')      # => "2x4y2z"
p compress_str('qqqqq')         # => "5q"
p compress_str('mississippi')   # => "mi2si2si2pi"
puts

def another_compress_str(str)
  compress = ''

  i = 0
  while i < str.length
    char = str[i]
    count = 0
    while char == str[i]
      count += 1
      i += 1
    end

    compress += if count > 1
                  count.to_s + char
                else
                  char
                end
  end
  compress
end

puts 'correct solution'
p another_compress_str('aaabbc')        # => "3a2bc"
p another_compress_str('xxyyyyzz')      # => "2x4y2z"
p another_compress_str('qqqqq')         # => "5q"
p another_compress_str('mississippi')   # => "mi2si2si2pi"
