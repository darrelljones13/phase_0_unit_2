# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# 1. First Person's solution I liked
 		#Avi Fox Rosen
#    What I learned from this solution
		#Our solutions were quite similar, but I like how Avi's is much cleaner and streamlined.  It is also easier to understand.
# Copy solution here:
#class Array
   #def pad!(pad_num, pad_value=nil)
      #return self if pad_num <= self.length  # Do not alter if value <= array length
      #(pad_num - self.length).times {self << pad_value} # Determine amount to pad
      #self 
   #end

   #def pad(pad_num, pad_value=nil)
    #  return self if pad_num <= self.length  # Do not alter if value <= array length
     # pad_array = self.dup # Dup to decouple from original
      #(pad_num - self.length).times {pad_array << pad_value} # Determine amount to pad
      #pad_array 
   #end
#end




# 2. Second Person's solution I liked
		# Puru Dahal
#    What I learned from this solution
		# I was completely unaware that I could use the destructive pad! within the non destructive pad method.  By doing this, Puru was able to call the clone method on pad! for a really simple solution.
# Copy solution here:

#class Array
	#def pad!(num, value = nil) #Initializing value of value
	#	diff = num - self.count
	#	diff.times do
	#		self << value
	#	end
	#	self
	#end

	#def pad(num, value = nil)
#		self.clone.pad!(num,value)
	#end
#end


# 3. My original solution:
#class Array
 # def pad!(min_size, value = nil)
  #    	if min_size <= self.length
   #   		return self
    #  	else
     #   	array_length = self.length
      #  	while min_size > array_length
      #	   		self.push(value) 
      #		 	min_size -=1
  	   # end
  	    #return self
        #end
   # end 
#end

#Non-Destructive

#class Array
 # def pad(min_size, value = nil)
  #    	if min_size <= self.length
   #   		return self
    #  	else
     #   	array_new = self.dup
      #  	while min_size > array_new.length
      #	   		array_new.push(value) 
      #		 	min_size -=1
  	   # end
  	    #return array_new
        #end
    #end 
#end


# 4. My refactored solution:

class Array #Removed the unnecessary class for each method and moved both into one.
  	def pad!(num, value = nil) #changed min_size to num for more clarity
      	return self if num <= self.length #Removed else and while loop
        	(num - self.length).times { self << value}#Loop x amount of times and shovel value into self.
      	return self
	end 

  def pad(num, value = nil)
      	self.clone.pad!(num, value) #Removed if, else, and while. Can call clone method on pad! to reuse.
	end 
end




# 5. Reflection

#I learned a ton from looking at two other people's solutions.  I kind of picked two random solutions to analyze.  These two are a bit different.  The first followed a similar line of logic to what I was trying to do initially, but was much more streamlined.  Having struggled with refactoring this week, I was able to see how much unnecessary code I had within my solution.  The second solution took a different approach, but I was able to researched how the clone method worked and decided to use it mine.  Calling this method showed me how much more efficient my code can be once I have more of these built in methods in my toolbox.