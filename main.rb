require_relative 'game'
require_relative 'player'
require_relative 'question'

player1 = Player.new('Player 1')
player2 = Player.new('PLayer 2')

game = Game.new(player1, player2)

game.start
