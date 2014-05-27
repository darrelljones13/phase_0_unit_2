# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# define method create_word with two parameters(the first (board) accesses the boggle_board array, and the other calls a splat operator on the coordinates (coords) parameter)
# 	use enumberable #map and create a block to loop through and access the first and last coordinates in board parameter.  Lastly, call a #join("") on the block to combine each letter pulled with no space between.
# end method

# Initial Solution

def create_word(board, *coords)
	coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [3,0], [0,2], [2,2], [3,3]) #=> returns "tale"
puts create_word(boggle_board, [0,1], [0,2], [1,2]) #=> returns "rad"

# Reflection 
#This was pretty straightforward given the challenge gave us the code, however I had to look up what the asterisk does to the second parameter in the create_word method.  Turns out it is called a "splat operator." It indicates that more parameters may be passed to the function, which are collected up and an array is created. Super cool.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# define method get_row with one parameter(row)
# 	bring the boggle_board nested array into the method
# 	return boggle_board[row]
# end method

# Initial Solution
def get_row(row)
	boggle_board = [["b", "r", "a", "e"],
                	["i", "o", "d", "t"],
                	["e", "c", "l", "r"],
                	["t", "a", "k", "e"]]
    return boggle_board[row]
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts get_row(1) #=> returns i, o, d, t

# Reflection 
#Tried to use a #each_index method on the boggle_board array, but it was returning it as an undefined variable.  I had to bring the boggle_board array into the method for everything to work. I'm going to keep thinking on this one.  There has to be a better way of doing this.


<<<<<<< HEAD
#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# define method get_col with one parameter(col)
# bring in variable boggle_board with nested array
# call a #transpose method on boggle_board array[col]
# end method

# Initial Solution
def get_col(col)
	boggle_board = [["b", "r", "a", "e"],
                	["i", "o", "d", "t"],
                	["e", "c", "l", "r"],
                	["t", "a", "k", "e"]]
    boggle_board.transpose[col]
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts get_col(2) #=> returns a, d, l, k

# Reflection 
Just discovered the #transpose method!  It assumes that the array you are calling it on is an array of arrays and transposes the rows and columns. It kind of feels like I'm cheating.



=======
>>>>>>> upstream/master
