class Array
  def my_each(&prc)
    length.times do |i|
      prc.call(self[i])
    end

    self
  end

  def my_select(&prc)
    selects = []

    my_each do |item|
      selects << item if prc.call(item)
    end

    selects
  end

  def my_reject(&prc)
    selects = []

    my_each do |item|
      selects << item unless prc.call(item)
    end

    selects
  end

  def my_any?(&prc)
    my_each do |item|
      return true if prc.call(item)
    end

    false
  end

  def my_all?(&prc)
    my_each do |item|
      return false unless prc.call(item)
    end

    true
  end

  def my_flatten
    flattened = []

    my_each do |el|
      if el.is_a?(Array)
        flattened.concat(el.my_flatten)
      else
        flattened << el
      end
    end

    flattened
  end

  def my_zip(*arrays)
    zipped = []

    length.times do |i|
      subzip = [self[i]]

      arrays.my_each do |array|
        subzip << array[i]
      end

      zipped << subzip
    end

    zipped
  end

  def my_rotate(positions = 1)
    split_idx = positions % length

    drop(split_idx) + take(split_idx)
  end

  def my_join(separator = '')
    join = ''

    length.times do |i|
      join += self[i]
      join += separator unless i == length - 1
    end

    join
  end

  def my_reverse
    reversed = []

    my_each do |el|
      reversed.unshift(el)
    end

    reversed
  end
end
