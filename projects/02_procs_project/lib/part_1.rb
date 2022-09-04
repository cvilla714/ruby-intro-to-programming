def my_map(array, &block)
  #   array.map(&block)
  items = []
  array.each do |item|
    items << block.call(item)
  end
  items
end

def my_select(array, &block)
  #   array.select(&block)
  items = []
  array.each do |item|
    items << item if block.call(item)
  end
  items
end

def my_count(array, &block)
  #   array.count(&block)
  count = 0
  array.each do |item|
    count += 1 if block.call(item)
  end
  count
end

def my_any?(array, &block)
  #   array.any?(&block)
  array.each do |item|
    return true if block.call(item)
  end
  false
end

def my_all?(array, &block)
  #   array.all?(&block)
  array.each do |item|
    return false unless block.call(item)
  end
  true
end

def my_none?(array, &block)
  #   array.none?(&block)
  array.each do |item|
    return false if block.call(item)
  end
  true
end
