# frozen_string_literal: true

class ComputerPlayer
  attr_reader :mark

  def initialize(val)
    @mark = val
  end

  def get_position(legal_positions)
    choice = legal_positions.sample
    puts "Computer #{mark} chose position #{choice}"
    choice
  end
end
