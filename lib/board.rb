class Board

attr_accessor :cells, :board, :taken, :valid_move

def initialize
  self.reset!
end 
#starts a game with a fresh board

def reset!
  @cells = Array.new(9, " ")
end 
#creates said fresh board

def display
  puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} " 
 puts "-----------"
 puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} " 
 puts "-----------" 
   puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} " 
end
#displays a board

def position(pos_string)
  pos_int = pos_string.to_i - 1  
  cells[pos_int]
end 
#allows you to access the informaton at a position in the string 

def update(move, player)
  cells[move.to_i-1] = player.token
end 
#updates the board per the player's input with their token


def full? 
  cells.all?{|token| token == "X" || token == "O"}

#  if @cells.any? {|x| x == "" || x == " "}
#     return false 
# elsif @cells.each {|x| x == "O" || x == "X"}
#   return true
# end 
end

#determines if all 9 cells are full

def turn_count
    cells.count {|token| token == "X" || token == "O"}

  # turns = 9
  # @cells.each do |x|
  #    if (x == " " || x == "")
  #     turns -= 1
  #    end
  # end 
  # turns 
end

#counts the turns - for some reason I'm counting down from 9? 

def taken?(input)

  if (position(input) == "O" || position(input) == "X")
    return true
  else
    return false
  end 
end 
#figures out if a given square already has a token in it 

def valid_move?(input)

  input.to_i.between?(1,9) && !taken?(input) 
end 

#makes sure a move is valid, i.e. it is an actual board position that isn't already full

end 