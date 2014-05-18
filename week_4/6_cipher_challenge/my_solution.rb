# U2.W4: Cipher Challenge


# I worked on this challenge with: James Walker.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes? # I'm thinking using an array will clean this up a bit.
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here? It is iterating through the input array.
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # What is #each_key doing here? It is iterating through the cipher hash
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? These are just placeholder variables.
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here? This is indicated that the code is finished searching for letters.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? This is telling it to push a space where the above characters are located.
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?  This is converting the integers 0 through 9 into an array
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for? Not entirely sure, but it could be that it should push any character that isn't in any of the above arrays or hashes, such as punctuation marks.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. It is matching any digits it finds
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?  The finished decoded sentence.      
end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  cipher = ("a".."z").to_a
  special_chars = ["@","#","$","%","^","&","*"]

  input.each do |target|
    if cipher.include?(target)
      index_value = cipher.index(target)
      decoded_sentence.push(cipher[index_value - 4])
    elsif (0..9).to_a.include?(target)
      decoded_sentence.push(target)
    elsif special_chars.include?(target)
      decoded_sentence.push(" ")
    else
      decoded_sentence.push(target)
    end
  end

  decoded_sentence = decoded_sentence.join("")
  if decoded_sentence.match(/\d+/)
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }
  else
    return decoded_sentence
  end
end



# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
  #James and I had a pretty good idea of how we wanted to refactor this code, but we struggled for quite a while on the syntax. We started out with a while loop which didn't work out and switched to an each method to iterate through the array.  We looked at others' solutions when we got stuck near the end to see if anyone else had a similar approach.  We found one almost exactly like ours.  Using it as a reference, we were able to find where we kept getting stuck.  This was incredibly challenging and time consuming, but I learned so much about built in methods and syntax just by pairing with James.