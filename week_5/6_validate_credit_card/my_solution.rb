# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a 16 digit integer
# Output: Will be true or false
# Steps: 
#Create a class CreditCard
	# Define initialize method with one parameter(number)
		# Make number an instance variable, convert to string and get the length of that string.
		# Create if statement.  If the length of number(converted to string) does not equal 16, raise an argument error.
		#end if statement
	#end method

	# Define check_card method
	#	the rest of the pseudocode is in-line



# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(number)
		@number = number
		if number.to_s.length != 16 
		raise ArgumentError.new("Credit Card number must be 16 digits")
		end
	end

	def check_card
		number = @number.to_s.chars.map {|char| char.to_i} #passes @number to a string, which then passes each character in the string to the block, then changing back to an integer. 
			number.each_index do |x| #passes each index in number.
			if x % 2 == 0 
				number[x] = number[x] * 2 #if the index is evenly divisible by 2, then multiply that number by 2.  To me, this made the most sense for accessing every other index.
			end
		end

		number = number.join.chars.map {|char| char.to_i} #sets number to join all characters and map through and convert each character to an integer.
			if number.inject(:+) % 10 == 0 #create if statement to inject a + between each integer. Returns true if the sum is evenly divisible by 10, and false otherwise 
				return true
			else
				return false
			end
	end
end

# 4. Refactored Solution


# 1. DRIVER TESTS GO BELOW THIS LINE

visa = CreditCard.new(1234567890987654)
puts visa.check_card #=> false

# mastercard = CreditCard.new(12345)
# puts mastercard.check_card #=> raises argument error

amex = CreditCard.new(1944523423423423)
puts amex.check_card #=> true


# 5. Reflection 

# This was by far the most challenging module to date.  I had a pretty good idea of what was supposed to happen with the overall structure of the code.  I struggled mightily element and then later with adding them all up.  This required a whole lot of research on methods I was unfamiliar with such as: #chars and #inject.  Now I know how they work and can add them to my toolbelt.  This required a lot of trial and error.  I'm certain this can be refactored because there is a lot of switching back and forth to and from strings and integers.  I'm just not sure how to go about doing that.  I definitely need more practice before I feel confident in the learning competencies of this challenge, especially the one about manipulating data structures.
