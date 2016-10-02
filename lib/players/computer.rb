module Players


class Computer < Player
attr_accessor :board, :move
attr_reader :token 

def initialize(token)
@token = token
end 

def move(board = [])
   # if board.valid_move?(5)
    # 5
  # else 
      rand(1..9).to_s
  #  end 
  # puts 'yee-ha'
end 
  
  # possible = []

  # @board.cells.each_with_index do |space, index|
  #   if space.nil? || space == " " || space == ""
  #     possible_moves << index
  #   end
  # end

  # if possible_moves.include?(4)
  #     @move = 5
  #   else
  #     @move = possible_moves.sample
  #   end 
  # if @board.taken?(5) == true
  #   5
  # else
  #   rand(1..9).to_s
  # end 
#asks the computer to suggest a position

end 

end

