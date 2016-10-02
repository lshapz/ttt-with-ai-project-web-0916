# require 'Pry'
# def winner 
#   winning = [["A"], ["B", "C"], "hello", ["X", "Y", "hello"]]
# winz = ""

#   if winning.include?("hello")
#     winz = "O"
#   elsif winning.include?(["X", "Y", "hello"])
#     winz = "X'"
#   else
#     winz = nil
#   end
# winz
# end 
# winner 
#   Pry.start 

# # def wiz
# #     winning = [["A"], ["B", "C"], ["O", "Z"], ["X", "X", "Y"]]
# # wiz = ""
# # window = []
# #       winning.each do |x|
# #         if (x == ["O", "Z"]) || (x == ["X", "X", "Y"])
# #           window << x
# #         end 
# #       end 
# # window[0][0]
# # end 

# # p wiz


# # # # # WIN_COMBINATIONS = [
# # # # #     [0,1,2],
# # # # #     [3,4,5],
# # # # #     [6,7,8],
# # # # #     [0,3,6],
# # # # #     [1,4,7],
# # # # #     [2,5,8],
# # # # #     [0,4,8],
# # # # #     [6,4,2]
# # # # #   ]


# # # # # def position(string)
# # # # #   board = ["X", "O", " ", " ", "O", " ", " ", "O", "X"]
# # # # #   board[string.to_i]
# # # # # end 

# # # # # def winner
# # # # #   winning = WIN_COMBINATIONS.map do |win_arrays|
# # # # #       win_arrays.map do |y|
# # # # #         position(y)
# # # # #       end
# # # # #     end 
# # # # #       binding.pry

# # # # #   winning.each {|y| y.each do |x| 
# # # # #     if x == (["X", "X", "X"] 
# # # # #       winner = "X"
# # # # #     elsif x == ["O", "O", "O"] 
# # # # #       winner ="O"
# # # # #     else 
# # # # #       winner = nil
# # # # #     end
# # # # #   end 
# # # # #   }

# # # # #   winning.flatten!
  
# # # # #   return winning[0]
# # # # # end 

# # # # # puts winner

# # # # #   # winner = []
# # # #   # winning = WIN_COMBINATIONS.map do |win_arrays|
# # # #   #     win_arrays.map do |y|
# # # #   #       self.board.position(y)
# # # #   #     end



# # # #   #   end 
# # # #   # winning.each {|arrays| arrays.each do |x| 
# # # #   #         case x 
# # # #   #           when ["X", "X", "X"] 
# # # #   #             winner << "X"
# # # #   #          when ["O", "O", "O"] 
# # # #   #           winner << "O"
# # # #   #         else 
# # # #   #           winner = []
# # # #   #         end
# # # #   #       end  }

# # # #   # return winner[0] 
