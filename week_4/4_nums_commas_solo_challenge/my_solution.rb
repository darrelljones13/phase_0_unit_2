# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
	#Input is any integer
# What is the output? (i.e. What should the code return?)
	#The code should return the number as a string separated by commas every 3 places
# What are the steps needed to solve the problem?
	#Define separate comma
	#Convert the integer into a string
	#Return the string without a comma if the places are less than 4
	#Define comma place and set to equal the length of the number string divided by 3
	#Create an if statement. If the length of the number string is divisible by 3 without a remainder, then comma place will equal comma place minus 1
	#Define n and set to equal -4
	#Loop through comma place using #times 
	#Use #insert to place a comma at index n
	#Set n to equal n minus 4
	#Return number string
	#Add test code
		#puts separate_comma(44444444)

		#puts separate_comma(55555555555555555555)

		#puts separate_comma(34)

		#puts separate_comma(3333)

# 2. Initial Solution

def separate_comma(number)
	num_string = number.to_s
	return num_string if num_string.length < 4

	comma_place = num_string.length / 3
		if num_string.length % 3 == 0
			comma_place -= 1
		end

	n = -4
	comma_place.times do 
		num_string.insert(n, ',')
	n -= 4	
	end
	return num_string

end

puts separate_comma(44444444)

puts separate_comma(55555555555555555555)

puts separate_comma(34)

puts separate_comma(3333)

# 3. Refactored Solution

#The change is already reflected above, but I originally had this: num_string.insert(',') and struggled to understand why it wasn't inserting the commas.  After some troubleshooting, I realized that I needed to cite n as the place to put the comma. Major facepalm on that one. I also realized that I needed to reset n to equal 4 after previously setting it to -4.  I learned this quickly after this was returned:

#44444,,444
#55555555555555555,,,,,,555
#34
#3,333


# 4. Reflection 
#I struggled with this challenge.  I initially thought that I would need to split the string in order to insert the commas, but I got stuck with the syntax to execute that plan.  I did some research and discovered that I can use a reverse method to iterate backwards through the integer and place a comma every three places.  I couldn't get that to work either.  As far as refactoring, I barely got this to work as is.  I researched how to refactor something like this, but I wasn't understanding the syntax.  I think I need to learn Regex.