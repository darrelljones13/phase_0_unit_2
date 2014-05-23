# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: An integer
# Output: Too high, too low, or spot on.
# Steps: 
# Create a class called GuessingGame
# 	Define an initialize method with one argument(answer)
# 		Create instance variable @answer and set to equal answer
# 		Create another instance variable @correct set to default to false
# 	end method

# 	Define method guess with one argument(num)
# 		if num is less than @answer, return too low
# 			set @correct to false
# 		elsif num is greater than @answer, return too high
# 			set @correct to false
# 		else return correct
# 			@correct is true
# 		end loop
# 	end method

# 	create method solved?
# 		return @ correct
# 	end method
# end class



# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @correct = false
#   end
  
#   def guess(num)
#   	if num < @answer
#   		puts "You guessed (#{num}), which is too low. Guess again"
#   		@correct = false
#   		return :low

#   	elsif num > @answer
#   		puts "You guessed (#{num}), which is too high. Guess again"
#   		@correct = false
#   		return :high
  		
#   	else
#   		puts "You guessed (#{num}), which is dead on! Well done!"
#   		@correct = true
#   		return :correct
#   	end
#   end

#   def solved?
#   	return @correct
#   end
# end


# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @correct = false
  end
  
  def guess(num)
  	if num < @answer
  		puts "You guessed (#{num}), which is too low. Guess again"
  		@correct = false
  		:low

  	elsif num > @answer
  		puts "You guessed (#{num}), which is too high. Guess again"
  		@correct = false
  		:high
  		
  	else
  		puts "You guessed (#{num}), which is dead on! Well done!"
  		@correct = true
  		:correct
  	end
  end

  def solved?
  	@correct
  end
end



# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(12)

game.solved?

game.guess(13)
game.guess(3)

game.guess(12)





# 5. Reflection 
#This challenge was definitely more challenging than the previous two, not because of the setup, but because I didn't fully understand what the symbols were doing.  Now I know that the :high, :low, and :correct symbols are going to be constant throughout the program.  I still need more exposure to symbols to fully understand how to use them, but at least I have a better idea.  
