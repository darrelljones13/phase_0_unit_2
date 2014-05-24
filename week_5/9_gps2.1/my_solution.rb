# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Ernie Salazar



# Our Refactored Solution

def bakery_num(people, food) 
  menu = {"pie" => 8, "cake" => 6, "cookie" => 1}
  qty = {"pie" => 0, "cake" => 0, "cookie" => 0}
  
  raise ArgumentError.new("You can't make that food") if menu.has_key?(food) == false

  if people % menu[food] == 0 
    food_qty = people / menu[food]
    "You need to make #{food_qty} #{food}(s)."
  else
    while people > 0                 
      if people / menu["pie"] > 0 
        qty["pie"] = people / menu["pie"]
        people = people % menu["pie"]
      elsif people / menu["cake"] > 0
        qty["cake"] = people / menu["cake"]
        people = people % menu["cake"]
      else
        qty["cookie"] = people
        people = 0
      end
    end
    "You need to make #{qty["pie"]} pie(s), #{qty["cake"]} cake(s), and #{qty["cookie"]} cookie(s)."
  end 
end


#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." 
#switched cake to pie



#  Reflection 
# My GPS partner and I sort of jumped straight into release 2, and started to look at the code line by line to see what it was doing. Our instructor got us back on track and we looked at the big picture breaking down what the code was doing.  I had some trouble grasping what exactly was happening in that big if/elsif/else statement.  Luckily, I had a fabulous GPS partner in Ernie. He also had some great refactoring ideas and was kind enough to pair up again to walk me through them.  Though I continue to scrape for refactoring ideas, I am slowly getting better at it.  


