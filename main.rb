# require all classes into one ruby file
require './question'
require './game'
require './player'

# run game
new_game = Game.new('New Game')
new_game.start