# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode
#Create class BoggleBoard
	# Create attribute accessor :board
	# Define method initialize with one parameter (*coords), a splat operator on the coordinates
		# Set instance variable @board equal to board
	# End method
	# Define method create_word with one parameter(board) 
		# Use enumberable #map and create a block to loop through and access the first and last coordinates in board parameter.  Lastly, call a #join("") on the block to combine each letter pulled with no space between.
	# End method
	# Define method get_row with one parameter(row)
		# Return board[row] which accepts an index number. Join with no space.
	# End method
	#Define method get_col with one parameter(col)
		# Call a #transpose method on board[col]. Join with no space.
	# End method
#End class

# 3. Initial Solution


# class BoggleBoard
# 	attr_accessor :board

# 	def initialize(board)
# 		@board = board
# 	end

# 	def create_word(*coords)
# 		coords.map { |coord| board[coord.first][coord.last]}.join("")
# 	end

# 	def get_row(row)
# 	    return board[row]
# 	end

# 	def get_col(col)
# 	    return board.transpose[col]
# 	end
# end
 
# dice_grid = [["b", "r", "a", "e"],
#              ["i", "o", "d", "t"],
#              ["e", "c", "l", "r"],
#              ["t", "a", "k", "e"]]
 
# boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution
class BoggleBoard
	attr_accessor :board

	def initialize(board)
		@board = board
	end

	def create_word(*coords)
		coords.map { |coord| board[coord.first][coord.last]}.join("")
	end

	def get_row(row)
	    return board[row].join("")#Added the #join to remove the space between the letters.
	end

	def get_col(col)
	    return board.transpose[col].join("")#Same as above
	end
end
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)


# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

# implement tests for each of the methods here:
puts boggle_board.create_word([3,2]) # => 'k'
puts boggle_board.create_word([2,2], [0,2], [3,2], [0,3]) # => 'lake'

puts boggle_board.get_row(0) # => "brae"
puts boggle_board.get_row(1) # => "iodt"
puts boggle_board.get_row(2) # => "adlk"
puts boggle_board.get_row(3) # => "take" Hey! There's a real word!

puts boggle_board.get_col(0) # => "biet"
puts boggle_board.get_col(1) # => "roca"
puts boggle_board.get_col(2) # => "eclr"
puts boggle_board.get_col(3) # => "etre"


# 5. Reflection 
# I had to do a little more refactoring on my methods from the first boggle board challenge in order to make it work within a class.  In doing so, I simplified everything to make it more DRY.  I'm becoming more comfortable with methods like #join and #transpose, which make it easier to refactor.  I've also done more research on attribute accessors and now have a better idea of what they can do.  Once I refactored my original, this challenge seemed pretty straightforward.

