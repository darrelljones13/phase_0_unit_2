# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Max Diener.

# 1. Pseudocode

# What is the input?
	#Each method accepts a minimum size (non-negative integer) and an optional pad value as arguments.
# What is the output? (i.e. What should the code return?)
	#Both should produce padded arrays of the correct indexes
# What are the steps needed to solve the problem?
 	#Create an Array class for pad! (destructive) and pad (non-destructive)
 	#Define the methods pad! and pad
 	#Bothnmethods return a padded array as indicated by the user input


# 2. Initial Solution
#Destructive

class Array
  def pad!(min_size, value = nil)
      	if min_size <= self.length
      		return self
      	else
        	array_length = self.length
        	while min_size > array_length
      	   		self.push(value) 
      		 	min_size -=1
  	    end
  	    return self
        end
    end 
end

#Non-Destructive

class Array
  def pad(min_size, value = nil)
      	if min_size <= self.length
      		return self
      	else
        	array_new = self.dup
        	while min_size > array_new.length
      	   		array_new.push(value) 
      		 	min_size -=1
  	    end
  	    return array_new
        end
    end 
end


# 3. Refactored Solution
#I could not figure out a way to refactor this without making it stop working.  I tried to loop over the array using a do statement, but my syntax needed to change in ways I wasn't sure of.

# 4. Reflection 
#Max was a tremendous help on this challenge.  I had a lot of code that I vaguely understood and Max helped me understand what needed to happen and how to polish my code.  Like the other challenges this week, I had some trouble transfering Pseudocode into actual, working code.  This was tough because there weren't too many directions to follow.  It took me quite a while to realize I needed to create a class for each method.  I certainly appreciate a good challenge, however my Ruby skills aren't quite up to par for a few of this week's challenges.


