# U2.W6: Refactoring for Code Readability


# I worked on this challenge with James Walker.


# Original Solution
#Create class CreditCard
# class CreditCard
#   def initialize(card_number) #Defining method initialize with one parameter
#     if card_number.to_s.length != 16 #Raising an arg error if the card  number isn't 16 digits
#       raise ArgumentError.new("Card number must be exactly 16 digits.")
#     end
#     @card_number = card_number.to_s.chars.map(&:to_i) #instance variable card_number equals self converted 
#     #to a string, then to an array, and finally into individual integers.
#   end

#   def check_card #Defining method check_card
#     @luhntotal = 0   #Setting instance var @luhntotal to 0
#     @card_number.reverse! #Calling reverse method(destructive)
#     @card_number.length.times do |index| #taking the length and iterate through array
#       if index % 2 != 0 # If index is not evenly divisible by 2
#         @card_number[index] = @card_number[index] * 2 #Doubling the odd indexes
#       end
#     end
#     @card_number.each do |value| #Iterating through each element in the array
#       if value >= 10
#         @luhntotal += value - 9  #Subtracting 9 from value and adding to luhntotal
#       else
#         @luhntotal += value #Else returns luhntotal plus value
#       end
#     end
#     return @luhntotal % 10 == 0 #returns true if luhntotal evenly divisible by 10
#   end
# end


# Refactored Solution
class CreditCard

  def initialize(card_number) #Defining method initialize with one parameter
    raise ArgumentError.new("Card number must be exactly 16 digits") if card_number.to_s.length != 16
    @card_number = card_number.to_s.chars.map(&:to_i) #instance variable card_number equals self converted
    #to a string, then to an array, and finally into individual integers.
  end

  def check_card
    touched = @card_number.values_at(0,2,4,6,8,10,12,14).map{|x| x*2}.to_s.chars.map(&:to_i).inject(:+)
    untouched = @card_number.values_at(1,3,5,7,9,11,13,15).to_s.chars.map(&:to_i).inject(:+)
    if (touched + untouched) % 10 == 0
      return true
    else
      return false
    end
  end

end
    


# DRIVER TESTS GO BELOW THIS LINE

card1 = CreditCard.new(4563960122001999)
card2 = CreditCard.new(4408041234567892)
print "1: "; p card1.check_card  == true
print "2: "; p card2.check_card  == false

def assert
  raise "Assertion failed!" unless yield
end

puts assert {card1.check_card == true} #=> should evaluate to nil 
puts assert {card2.check_card == true} #=> should raise an assertion error







# Reflection 

#James and I spent a lot of time on this challenge and struggled a bit with what we called "the ethics of refactoring" for lack of a better term.  We knew of ways to streamline this code, but we weren't sure if we should just go for the most DRY method or stay somewhat loyal to the ideas of the original programmer.  We sort of found the middle ground and did a little of both, but this begs the question of should we sacrifice the integrity of the original code to make it more DRY.  In terms of the learning competencies of this challenge, I think we both feel pretty comfortable with explaining what is happening in the code and refactoring for clarity and readability.