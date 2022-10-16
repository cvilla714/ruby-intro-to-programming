# frozen_string_literal: true

def reverser(string, &proc)
  proc.call(string.reverse)
end

def word_changer(string, &proc)
  string.split.map { |word| proc.call(word) }.join(' ')
end

def greater_proc_value(number, proc_1, proc_2)
  [proc_1.call(number), proc_2.call(number)].max
end

def and_selector(array, proc_1, proc_2)
  array.select { |n| proc_1.call(n) && proc_2.call(n) }
end

# def alternating_mapper(array, proc_1, proc_2)
# array.each_with_index.map do |n, i|
# if i.even?
# proc_1.call(n)
# else
# proc_2.call(n)
# end
# end
# end

def alternating_mapper(array, proc_1, proc_2)
  array.each_with_index.map do |n, i|
    i.even? ? proc_1.call(n) : proc_2.call(n)
  end
end
