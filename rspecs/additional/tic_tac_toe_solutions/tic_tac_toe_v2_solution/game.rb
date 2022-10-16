# frozen_string_literal: true

require './board'
require './human_player'

class Game
  def initialize(n, *marks)
    @players = marks.map { |mark| HumanPlayer.new(mark) }
    @current_player = @players.first
    @board = Board.new(n)
  end

  def switch_turn
    @current_player = @players.rotate!.first
  end

  def play
    while @board.empty_positions?
      @board.print
      pos = @current_player.get_position
      @board.place_mark(pos, @current_player.mark)
      if @board.win?(@current_player.mark)
        puts 'Game Over'
        puts "#{@current_player.mark} HAS WON!"
        return
      else
        switch_turn
      end
    end

    puts 'Game Over'
    puts 'DRAW'
  end
end
