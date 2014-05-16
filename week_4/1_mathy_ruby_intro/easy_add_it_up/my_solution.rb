# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# Total
# What is the input?
	#Input is an array of numbers
# What is the output? (i.e. What should the code return?)
	#Code should return the sum of all numbers in the array
# What are the steps needed to solve the problem?
	#Create a method called total
	#Create a variable called sum and set to 0
	#Create a do function to loop through each index of the array
	#Set sum to equal sum + i
	#Return sum

# Sentence Maker
# What is the input?
	#Input is an array of strings
# What is the output? (i.e. What should the code return?)
	#Code should return each string in the array with a space in between each string
# What are the steps needed to solve the problem?
	#Create a method called sentence_maker
	#Create a variable called phrase and set to join each string in the array with a space between each
	#Set sentence to capitalize the first letter and to add a period at the end
	#Return sentence_maker

# 2. Initial Solution

def total(array)
	sum = 0
array.each do |n|
	sum += n
end

return sum
end

array = [ 21 , 66 , 32 , 58 , 87 , 8 , 12]

puts total(array)

def sentence_maker(array)
	phrase = array.join(" ")

return phrase
end

array = ["I\'ve" , "got" , "a" , "bad" , "feeling" , "about" , "this."]
puts sentence_maker(array)
# 3. Refactored Solution

#No changes for total

#Sentence Maker
def sentence_maker(array)
	phrase = array.join(" ")
	phrase = phrase.capitalize
	phrase = phrase + "."
end

# 4. Reflection 

# After 3 weeks without using ruby, I was a bit rusty.  I reviewed Chris Pine's book and did a few tutorials and it is starting to come back.  This one took me longer than it should have.