# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: Entering a new die with sides as the argument
# Output: die.sides(num) will put the number of sides, and die.roll will put a random number between 1 and sides
# Steps:
# Create a class called Die
# 	Define a method called initialize with one argument (sides)
# 		Until sides < 0 Create a raise statement to output "Sides must be greater than zero" 
# 		create an instance variable @sides equal to sides
# 		end until loop
# 	end method


# 	define a method called sides and set equal to the instance variable @sides
# 	end method

# 	define a method called roll
# 		create a condition to return a random number between 1 and sides
# 	end method
# end class

# 3. Initial Solution

# class Die
#   def initialize(sides)
#     until sides > 0
#     	raise ArgumentError.new("Side must be greater than zero") 
#   	end 
#   @sides = sides
# end
  
#   def sides
#     sides = @sides
#   end
  
#   def roll
#     rand(1..sides)
#   end
# end



# 4. Refactored Solution


class Die
  def initialize(sides)
    until sides > 0
    	raise ArgumentError.new("Side must be greater than zero") 
  	end 
  @sides = sides
end
  
  def sides
    sides = @sides #tried (and failed) to figure out a way to get rid of this.  Seems redundant.
  end
  
  def roll
    rand(1..sides)
  end
end



# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(12)

puts die.sides == 12
puts die.roll < 13

# 5. REFLECTION


	# Since last week, I have been trying to refresh my knowledge of classes and methods in Ruby.  Structurally, I understood how to tackle this challenge, but it still took a bit of trial and error with the syntax.  I started with an if statement within the Die class and couldn't understand until I realized that an until statement would work best in this case.  From there, I did a little bit of research on raising an argument error and got my head around using #rand to create the randomizer.  I inititally had rand(1..6), which didn't work.  1..sides made sense after reading the driver code output.






# 5. Reflection 