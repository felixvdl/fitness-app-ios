class Bord

  attr_accessor :values_bord, :winning_combinations
  def initialize
    @values_bord = { 1 => " ", 2 => " ", 3 => " ", 4 => " ", 5 => " ", 6 => " ", 7 => " ", 8 => " ", 9 => " " }
    @winning_combinations = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
  end

  def print_instructions
    puts "these are the possible moves:"
    puts ""
    puts "1 | 2 | 3"
    puts "---------"
    puts "4 | 5 | 6"
    puts "---------"
    puts "7 | 8 | 9"
    puts ""
  end

  def print_bord
    puts "this is the current bord:"
    puts ""
    puts "#{self.values_bord[1]} | #{self.values_bord[2]} | #{self.values_bord[3]}"
    puts "---------"
    puts "#{self.values_bord[4]} | #{self.values_bord[5]} | #{self.values_bord[6]}"
    puts "---------"
    puts "#{self.values_bord[7]} | #{self.values_bord[8]} | #{self.values_bord[9]}"
    puts ""
  end
  
end
