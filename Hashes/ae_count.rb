def ae_count(str)
  count = Hash.new(0)
  str.each_char { |char| count[char] += 1 if %w[a e].include?(char) }
  count
end

puts ae_count('everyone can program') #=> {"a"=>2, "e"=>3}
puts ae_count('keyboard') #=> {"a"=>1, "e"=>1}
