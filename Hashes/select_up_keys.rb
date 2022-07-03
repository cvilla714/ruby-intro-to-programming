def select_upcase_keys(hash)
  hash.select { |key, _value| key.upcase == key }
end

print select_upcase_keys({ 'make' => 'Tesla', 'MODEL' => 'S', 'Year' => 2018, 'SEATS' => 4 }) # => {"MODEL"=>"S", "SEATS"=>4}
puts

print select_upcase_keys({ 'DATE' => 'July 4th', 'holiday' => 'Independence Day', 'type' => 'Federal' }) # => {"DATE"=>"July 4th"}
puts

def another_select_upcase_keys(hash)
  selected = {}

  hash.each do |k, v|
    selected[k] = v if k == k.upcase
  end

  selected
end

puts ' another_select_upcase_keys '
print another_select_upcase_keys({ 'make' => 'Tesla', 'MODEL' => 'S', 'Year' => 2018, 'SEATS' => 4 })
# => {"MODEL"=>"S", "SEATS"=>4}
puts

print another_select_upcase_keys({ 'DATE' => 'July 4th', 'holiday' => 'Independence Day', 'type' => 'Federal' }) # => {"DATE"=>"July 4th"}
