require_relative './player'
require_relative './bord'
require_relative './game'

player1 = Player.new("X")
player2 = Player.new("O")

game = Game.new
bord = Bord.new

game.start_game(player1,player2)
