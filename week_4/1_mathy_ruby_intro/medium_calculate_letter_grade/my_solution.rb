# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
	#Input is an array of numbers(grades)
# What is the output? (i.e. What should the code return?)
	#Code should return a letter grade(string) representing the average of the numbers from the array
# What are the steps needed to solve the problem?
	#Create a method called get_grade
	#Create a variable called sum and set to 0
	#Create a do function to loop through each index of the array
	#Set sum to equal sum + n
	#Create a variable called average and set it to equal sum divided by the length of the array
	#Create if statements to give numerical values for each grade ex. num >=90 will return "A"



# 2. Initial Solution

def get_grade(grade)
		sum = 0
	grade.each do |n|
		sum += n 
	end
		average = sum / grade.length

			  if average >= 90 
			  return "A"
			  end
			  if average >= 80 
			  return "B"
			  end
			  if average >= 70 
			  return "C"
			  end
			  if average >= 60 
			  return "D"
			  end
			  if average < 60 
			  return "F"
			  end
		
end



# 3. Refactored Solution
	#I tried refactoring using a case statement, but I'm not entirely sure how they work.  I'm sure I can refactor this with more ruby knowledge.


# 4. Reflection 
	#I think we did something similar in the prep work.  Pseudocoding this exercize out first really helped me structure the code.  I'm starting to understand why pseudocode is so important.