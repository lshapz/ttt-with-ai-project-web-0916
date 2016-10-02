require 'Pry'
class Game

attr_accessor :board, :player_1, :player_2, :winner, :winning, :turn, :current_player, :play, :winz2, :winz, :again
attr_reader :player
WIN_COMBINATIONS = [
    [0,4,8],
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [6,4,2]
  ]



# def board
#   @board = Board.new
# end 

# def player_1
#   @player_1 = Player.new 
# end 

# def player_2
#   @player_2 = Player.new
# end 
#player_1 = Human.new.token("X"), player_2 = Human.new.token("O"), board = Board.new

def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
  @player_1 = player_1
  @player_2 = player_2
  @board = board 
end 
#starts a new game, default values are 2 humans


def current_player
  if (board.turn_count % 2) == 0 
     @player_1
  else 
     @player_2
  end 


end 
#tells you who the current player is based on who went first

def over?
    won? || draw?
end 

#tells you the game is over because the board is full

def won? 
  @winz2 = ""
  winning = WIN_COMBINATIONS.map do |win_arrays|
      win_arrays.map do |y|
        self.board.position(y+1)
      end
    end 

 if winning.include?(["X", "X", "X"])
    @winz2 = "X"
    return true 
  elsif winning.include?(["O", "O", "O"])
   @winz2 = "O"
   return true
  else
   return false
  end
 

end   

#determines if somebody won, by mapping the current board onto the winning combinations and seeing if any end up true

def draw? 
  if @board.full? == true && self.won? == false
    return true
  end 
end 

#says it's a draw if nobody won and the game is over

def winner

  # winning = self.board.cells.combination(3).to_a
    winning = WIN_COMBINATIONS.map do |win_arrays|
      win_arrays.map do |y|
        self.board.position(y)
      end
    end 

  @winz = ""

  if winning.include?(["O", "O", "O"])
    @winz = "O"
  elsif winning.include?(["X", "X", "X"])
   @winz = "X"
  else
    @winz = nil
  end

  @winz
#       winning.each do |x|
#           if (x == ["O", "O", "O"]) || (x == ["X", "X", "X"])
#             winz << x 
#           else 
#             winz << nil 
#           end 
#      end 

# winz.compact!.flatten!
# winz[0]

end 

  #  if winning.include?(["O", "O", "O"])
  #   winz = "O"
  # elsif winning.include?(["X", "X", "X"])
  #   winz = "X"
  # else
  #   winz = nil
  # end

#   def turn
#     player = current_player
#     current_move = player.move(@board)
#     if !@board.valid_move?(current_move)
#       turn
#     else
#       puts "Turn: #{@board.turn_count+1}\n"
#       @board.display
#       @board.update(current_move, player)
#       puts "#{player.token} moved #{current_move}"
#       @board.display
#       puts "\n\n"
#     end
#   end

def turn
  @player = current_player
  current_move = player.move(@board)
  if !@board.valid_move?(current_move)  
    #current_move = player.move(@board)
    #turn
    #current_move = player.move(@board)
    turn
  else
   @board.update(current_move, player)
   @board.display
   # @board.display
    #uncomment this after testing - it jsut makes stuff look weird
  end 
end 
  #binding.pry

  def play
    rematch = ""
    while !over?
      turn
    end
      if won?
        puts "Congratulations #{@winz2}!"
      elsif draw?
        puts "Cats Game!"
    end 
  end

def start 
  puts "Are you ready to Tic, Tac, and/or Toe?"
  game = Game.new
  until game.over?
    game.play
  end
  while game.over? 
    again
  end 
end
def again
  puts "Want some more?" 
    rematch = gets.chomp 
     if (rematch.downcase == "y" || rematch.downcase == "yes" || rematch.downcase == "sure")
          self.start 
     elsif (rematch.downcase == "n" || rematch.downcase == "no" || rematch.downcase == "nah")
        exit 
      else
        again
      end 
    end 



# def again
#   rematch = gets.strip 
#  if (rematch.downcase == "y" || rematch.downcase == "yes" || rematch.downcase == "sure")
#   self.start
# elsif (rematch.downcase == "n" || rematch.downcase == "no" || rematch.downcase)
#   exit
# else 
#   rematch = gets.strip
# end
# end


# def play
#       if over? == false
#         turn 
#       elsif over? == true
#             if won? 
#              "Congratulations, #{self.winner}"
#             elsif draw? 
#               puts "Cats Game!"
#             end
#       end
      
#       #end 

#   #player = current_player
# end

  
 #binding.pry  
# Pry.start
#puts "feh"
#end 

end 