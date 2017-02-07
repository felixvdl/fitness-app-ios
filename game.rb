class Game
  attr_accessor :bord

  def initialize
    @bord = Bord.new
  end

  def start_game(player1, player2)
    current_player = player1

    (1..9).each do |i|
      bord.print_instructions
      bord.print_bord

      play(current_player)
      #stop playing if there is a winner and print out a winning message
      break if self.check_winner(current_player) == true
      #switch players after every move
      if current_player == player1
        current_player = player2
      else
        current_player = player1
      end
      #tie happens when all of the moves have been taken and no winner has been declared
      if i == 9
        puts "Tie, nobody won"
      end

    end
    bord.print_bord
  end

  def clear_screen
    puts "\n" * 40
  end

  def play(current_player)
    puts "player #{current_player.name}: make your move"

    move = gets.chomp.to_i
    #if user input is correct and the move is still empty
    if bord.values_bord[move] == " "
      bord.values_bord[move] = current_player.name
      #if user input is wrong
    elsif  !(1..9).include?(move)
      puts "Wrong input, please pick a number from 1 to 9"
      self.play(current_player)
      #if user input is allready taken
    else
      puts "Already taken, play again"
      puts "\n"
      self.play(current_player)
    end
    self.clear_screen

  end

  def check_winner(current_player)
    bord.winning_combinations.each do |winning|
      if bord.values_bord[winning[0]] == current_player.name &&     bord.values_bord[winning[1]] == current_player.name &&   bord.values_bord[winning[2]] == current_player.name
        puts "Player #{current_player.name} won"
        return true
      end
    end
  end

end
