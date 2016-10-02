module Players


class Computer < Player


def move(board = [])
  rand(1..9).to_s
end 

#asks the computer to suggest a position

end 

end
