# frozen_string_literal: true

require 'colorize' # Need to run 'gem install colorize'

# self customized libary
require './lib/interface'
require './lib/board'
require './lib/player'
require './lib/game'
# top_level_documentation: false
class Main
  include Interface

  loop do
    show_text('welcome')

    player1 = Player.new(get_input('player1'), 'X'.red)
    player2 = Player.new(get_input('player2'), 'O'.green)
    board = Board.new

    game = Game.new(player1, player2, board)

    unless game.play
      show_text('finish')
      break
    end
  end
end
