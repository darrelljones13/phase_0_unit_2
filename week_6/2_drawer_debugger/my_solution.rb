# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer
attr_reader :contents

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item) #Added item argument (error 2)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing? Returns the last element in @contents.
		@contents.delete(item)
	end

	def dump  # what should this method return?
		puts "Your drawer is empty."
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end #added end to class (error 1)

class Silverware
	attr_reader :type, :clean #Added a clean attribute(bonus)

	# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end
	def clean_silverware #Added new method (error 3)
		puts "the #{type} is clean"
		@clean = true
	end
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? This should show what items are currently in the drawer. In this case, there should be zero items because we just called the #dump method on the drawer, effectively emptying the contents of the array.


fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...This removed the fork, which raised (error 4) when the fork.eat was called below.
fork = Silverware.new("fork") 
puts silverware_drawer.add_item(fork) #Created a new instance of fork because it was just removed and added it back to the drawer. 
fork.eat

#BONUS SECTION
puts fork.clean # => false

# DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Assertion failed!" unless yield
end

puts assert {silverware_drawer.add_item("soup_spoon")} # => `assert': Assertion failed! (There is no soup_spoon in the drawer)

soup_spoon = Silverware.new("soup_spoon") #Added soup_spoon to the drawer
puts silverware_drawer.add_item(soup_spoon)
silverware_drawer.view_contents #Shows soup_spoon has been added
 
puts assert {silverware_drawer.add_item("soup_spoon")} # => nil (now we know it has been added)

# 5. Reflection 
# I really enjoyed this challenge. I liked seeing each error and tinkering with the code/driver tests to debug.  I definitely needed this practice with identifying and locating errors in the code.  After doing so, I feel pretty good about this challenge's learning competencies.
