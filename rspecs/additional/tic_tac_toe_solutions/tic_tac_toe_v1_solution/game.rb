# frozen_string_literal: true

require './board'
require './human_player'

class Game
  def initialize(mark_1, mark_2)
    @player_1 = HumanPlayer.new(mark_1)
    @player_2 = HumanPlayer.new(mark_2)
    @current_player = @player_1
    @board = Board.new
  end

  def switch_turn
    @current_player = if @current_player == @player_1
                        @player_2
                      else
                        @player_1
                      end
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
