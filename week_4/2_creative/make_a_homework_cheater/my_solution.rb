# U2.W4: Homework Cheater! Famous Chicago Landmark Edition


# I worked on this challenge [by myself].

# 2. Pseudocode
 #This program is designed to help students quickly create and turn in their assignments on famous Chicago architecture.Note, as a former teacher, I do not approve ;) kidding!

# Input:
	#landmark name, address number, street, neighborhood, date erected, architect, uniqueness
# Output:
	# Create a method essay_writer and pass the above arguments to the method
# Steps:
	# Write a generic template that can be used with any Chicago building.
	# Insert landmark name, address number, street, neighborhood, date erected, architect, and uniqueness arguments into the paragraph
	# Create test code
	# Write program code
	# Refactor
	# Retest
	# Repeat until it works

# 3. Initial Solution
def essay_writer(landmark_name, address_num, street, neighborhood, date_erected, architect, uniqueness)

"#{landmark_name} is one of the most famous landmarks in Chicago.  Built in #{date_erected}, #{landmark_name} is located at #{address_num} #{street}, in Chicago\'s #{neighborhood} neighborhood.  #{landmark_name} was designed and built by #{architect}, and is best known for #{uniqueness}."
end



# 4. Refactored Solution

#I wasn't sure how to refactor this one other than making many syntax fixes as I tested.



# 1. DRIVER TESTS GO BELOW THIS LINE
puts essay_writer(
	"Willis \(Sears\) Tower",
	"233",
	"South Wacker Drive",
	"Loop",
	"1973",
	"Skidmore, Owings and Merrill",
	"being the second-tallest building in the United States and the eighth-tallest freestanding structure in the world. The skyscraper is one of the most popular tourist destinations in Chicago, and over one million people visit its observation deck each year")
#Output
	#Willis (Sears) Tower is one of the most famous landmarks in Chicago.  Built in 1973, Willis (Sears) Tower is located at 233 South Wacker Drive, in Chicago's Loop neighborhood.  Willis (Sears) Tower was designed and built by Skidmore, Owings and Merrill, and is best known for being the second-tallest building in the United States and the eighth-tallest freestanding structure in the world. The skyscraper is one of the most popular tourist destinations in Chicago, and over one million people visit its observation deck each year.

puts essay_writer(
	"Chicago Tribune Building",
	"435",
	"North Michigan Avenue",
	"Magnificent Mile",
	"1925",
	"John Mead Howells and Raymond Hood",
	"being home to the Tribune Company and WGN.  Prior to the building of the Tribune Tower, correspondents for the Chicago Tribune brought back rocks and bricks from a variety of historically important sites throughout the world at the request of Colonel McCormick. Many of these reliefs have been incorporated into the lowest levels of the building and are labeled with their location of origin. Stones included in the wall are from such sites as the Trondheim Cathedral, Taj Mahal, Clementine Hall, the Parthenon, among others")

#Output
	#Chicago Tribune Building is one of the most famous landmarks in Chicago.  Built in 1925, Chicago Tribune Building is located at 435 North Michigan Avenue, in Chicago's Magnificent Mile neighborhood.  Chicago Tribune Building was designed and built by John Mead Howells and Raymond Hood, and is best known for being home to the Tribune Company and WGN.  Prior to the building of the Tribune Tower, correspondents for the Chicago Tribune brought back rocks and bricks from a variety of historically important sites throughout the world at the request of Colonel McCormick. Many of these reliefs have been incorporated into the lowest levels of the building and are labeled with their location of origin. Stones included in the wall are from such sites as the Trondheim Cathedral, Taj Mahal, Clementine Hall, the Parthenon, among others.

puts essay_writer(
	"Wrigley Field",
	"1060",
	"West Addison Street",
	"Lakeview",
	"1914",
	"Zachary Taylor Davis",
	"serving as the home ballpark of the Chicago Cubs since 1916. Wrigley Field is nicknamed The Friendly Confines, a phrase popularized by Hall of Famer Ernie Banks. The current capacity is 41,009, making Wrigley Field the 10th smallest actively used ballpark. It is the oldest National League ballpark and the second oldest active major league ballpark and the only remaining Federal League park. Wrigley is known for its ivy covered brick outfield wall, the unusual wind patterns off Lake Michigan, the iconic red marquee over the main entrance, the hand turned scoreboard, and for being the last major league park to have lights installed for play after dark, with lighting installed in 1988")

#Output
	#Wrigley Field is one of the most famous landmarks in Chicago.  Built in 1914, Wrigley Field is located at 1060 West Addison Street, in Chicago's Lakeview neighborhood.  Wrigley Field was designed and built by Zachary Taylor Davis, and is best known for serving as the home ballpark of the Chicago Cubs since 1916. Wrigley Field is nicknamed The Friendly Confines, a phrase popularized by Hall of Famer Ernie Banks. The current capacity is 41,009, making Wrigley Field the 10th smallest actively used ballpark. It is the oldest National League ballpark and the second oldest active major league ballpark and the only remaining Federal League park. Wrigley is known for its ivy covered brick outfield wall, the unusual wind patterns off Lake Michigan, the iconic red marquee over the main entrance, the hand turned scoreboard, and for being the last major league park to have lights installed for play after dark, with lighting installed in 1988.


# 5. Reflection 
#This entire challenge was a lot of fun, and possibly the first one I understood how to tackle from the beginning.  If I had more time, I'd add more arguments to make the essay more passable.

