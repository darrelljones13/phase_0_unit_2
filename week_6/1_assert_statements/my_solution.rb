# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#For  assert { name == "bettysue" } it returns nil
#For assert { name == "billybob" } it raises this error:
	# RuntimeError: Assertion failed!
	# from (irb):2:in `assert'
	# from (irb):7
	# from /usr/local/rvm/rubies/ruby-1.9.3-p392/bin/irb:16:in `<main>'
#The assert method returned nil because "bettysue" returned true and raised the error because "billybob" returned false for the name variable.

# 3. Copy your selected challenge here
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

# 4. Convert your driver test code from that challenge into Assert Statements
die = Die.new([ "A" , "B" , "C" , "D" , "E" , "F"])
puts assert {die.sides == 6} # => nil
puts assert {die.sides == 2} # => `assert': Assertion failed!
puts assert {die.sides > 6} # => `assert': Assertion failed!


# 5. Reflection
# Unless I'm missing something, this seems pretty straightforward. At this 
# early stage, I wonder what the assert statements offer that the driver 
# code didn't already do, but I'm sure I'll find out soon enough.



