class Board

  attr_accessor :values_board
  def initialize
    @values_board = { 1 => " ", 2 => " ", 3 => " ", 4 => " ", 5 => " ", 6 => " ", 7 => " ", 8 => " ", 9 => " " }
  end

  def print_instructions
    puts ""
    puts "1 | 2 | 3"
    puts "---------"
    puts "4 | 5 | 6"
    puts "---------"
    puts "7 | 8 | 9"
    puts ""
  end

  def print_board
    puts ""
    puts "#{self.values_board[1]} | #{self.values_board[2]} | #{self.values_board[3]}"
    puts "---------"
    puts "#{self.values_board[4]} | #{self.values_board[5]} | #{self.values_board[6]}"
    puts "---------"
    puts "#{self.values_board[7]} | #{self.values_board[8]} | #{self.values_board[9]}"
    puts ""
  end

end

board = Board.new
board.print_instructions
board.print_board
