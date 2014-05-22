# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

## Input: Entering a new die with labels as the argument
# Output: die.sides will put the number of labels, and die.roll will put a random label
# Steps:
# Create a class called Die
# 	Define a method called initialize with one argument (labels)
# 		if the labels array is empty, raise statement to output 			"Array cannot be empty!" 
#       end if
# 		create an instance variable @sides equal to the length 			of the labels array
#		create another instance variable @labels equals lables
# 	end method


# 	define a method called sides and set equal to the instance variable @sides
# 	end method

# 	define a method called roll
# 		create a condition to return a random element in the labels array using #sample
# 	end method
# end class


# 3. Initial Solution

# class Die
#   def initialize(labels)
#   	if labels.empty?
#   		raise ArgumentError.new("Array cannot be empty!") 
#   	end
#   	@sides = labels.length
#   	@labels = labels
#   end

#   def sides
#   	sides = @sides
#   end

#   def roll
#   	@labels.sample
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("Array cannot be empty!") 
  	end
  	@sides = labels.length
  	@labels = labels
  end

  def sides
  	@sides
  end

  def roll
  	@labels.sample
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new([ "A" , "B" , "C" , "D" , "E" , "F"])
puts die.sides # => 6
puts die.roll # => returns one of the 6 letters in the array
puts die.sides > 6 # => false




# 5. Reflection 
# I liked this challenge because it built on the structure of the last challenge.  It took a little bit of research on fetching a random element from an array. #sample did the trick.  I feel pretty good about the learning competencies for this challenge.  As I learn more streamlined ways to code, I'm hoping my refactoring skills get better.
