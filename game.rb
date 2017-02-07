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
      break if self.check_winner(current_player) == true
      if current_player == player1
        current_player = player2
      else
        current_player = player1
      end

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

    if bord.values_bord[move] == " "
      bord.values_bord[move] = current_player.name
    elsif  !(1..9).include?(move)
      puts "Wrong input, please pick a number from 1 to 9"
      self.play(current_player)
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
