# frozen_string_literal: true

require './item'

class List
  # print styles
  LINE_WIDTH = 49
  INDEX_COL_WIDTH = 5
  ITEM_COL_WIDTH = 20
  DEADLINE_COL_WIDTH = 10
  CHECKMARK = "\u2713".force_encoding('utf-8') # pretty checkmark

  attr_accessor :label

  def initialize(label)
    @label = label
    @items = []
  end

  def add_item(title, deadline, description = '')
    return false unless Item.valid_date?(deadline)

    @items << Item.new(title, deadline, description)
    true
  end

  def toggle_item(index)
    item = self[index]
    item&.toggle
  end

  def size
    @items.length
  end

  def valid_index?(index)
    index >= 0 && index < size
  end

  def swap(index_1, index_2)
    return false if !valid_index?(index_1) || !valid_index?(index_2)

    @items[index_1], @items[index_2] = @items[index_2], @items[index_1]
    true
  end

  def [](index)
    return nil unless valid_index?(index)

    @items[index]
  end

  def print
    puts '-' * LINE_WIDTH
    puts ' ' * 16 + label.upcase
    puts '-' * LINE_WIDTH
    puts "#{'Index'.ljust(INDEX_COL_WIDTH)} | #{'Item'.ljust(ITEM_COL_WIDTH)} | #{'Deadline'.ljust(DEADLINE_COL_WIDTH)} | Done"
    puts '-' * LINE_WIDTH
    @items.each_with_index do |item, i|
      status = item.done ? CHECKMARK : ' '
      puts "#{i.to_s.ljust(INDEX_COL_WIDTH)} | #{item.title.ljust(ITEM_COL_WIDTH)} | #{item.deadline.ljust(DEADLINE_COL_WIDTH)} | [#{status}]"
    end
    puts '-' * LINE_WIDTH
  end

  def print_full_item(index)
    item = self[index]
    return if item.nil?

    status = item.done ? CHECKMARK : ' '
    puts '-' * LINE_WIDTH
    puts item.title.to_s.ljust(LINE_WIDTH / 2) + "#{item.deadline} [#{status}]".rjust(LINE_WIDTH / 2)
    puts item.description
    puts '-' * LINE_WIDTH
  end

  def print_priority
    print_full_item(0)
  end

  def up(index, amount = 1)
    return false unless valid_index?(index)

    while amount.positive? && index != 0
      swap(index, index - 1)
      index -= 1
      amount -= 1
    end
    true
  end

  def down(index, amount = 1)
    return false unless valid_index?(index)

    while amount.positive? && index != size - 1
      swap(index, index + 1)
      index += 1
      amount -= 1
    end
    true
  end

  def sort_by_date!
    @items.sort_by!(&:deadline)
  end

  def remove_item(index)
    return false unless valid_index?(index)

    @items.delete_at(index)
    true
  end

  def purge
    @items.delete_if(&:done)
  end
end
