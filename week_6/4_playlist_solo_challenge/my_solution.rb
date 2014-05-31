# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode
# Create class Song
# 	define initialize method with two parameters(track, artist)
# 		set track and artist instance variables equal to themselves
# 	end method

# 	define play method
# 		puts "You are currently listening to #{@track} by #{@artist}"
# 	end method
# end class

# Create class Playlist
# 	define initialize method with one parameter(*list_array)-The * tells it that there will be multiple parameters and creates an array.
# 		create list_array instance variable and set it equal to itself
# 	end method

# 	define add method with one parameter(*song)
# 		iterate through the song array and pushes new songs to the list_array
# 		end block
# 	end method

# 	define method num_of_tracks
# 		return the length of list_array
# 	end method

# 	define method remove with one parameter(song)
# 		delete song from list_array
# 		puts "#{song} has been removed from the playlist"
# 	end method

# 	define method includes? with one parameter(song)
# 		return true if song is included in list_array
# 		end if 
# 	end method

# 	define method play_all
# 		puts  "Current queued songs: #{@list_array}"
# 	end method

# 	define method display
# 		puts "All songs in your current playlist #{@list_array}"
# 	end method
# end class


# Initial Solution
class Song

	def initialize(track, artist)
		@track = track
		@artist = artist
	end

	def play
		puts "You are currently listening to #{@track} by #{@artist}"
	end

end

class Playlist
	def initialize(*list_array)
		@list_array = list_array
	end

	def add(*song)
		song.each do |x|
			@list_array << x
		end
	end

	def num_of_tracks
		return @list_array.length
	end

	def remove(song)
		return @list_array.delete(song)
		puts "#{song} has been removed from the playlist"
	end

	def includes?(song)
		if @list_array.include?(song)
			return true 
		end
	end

	def play_all
		puts  "Current queued songs: #{@list_array}"
	end

	def display
		puts "All songs in your current playlist #{@list_array}"
	end
end



# Refactored Solution

# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
stayin_alive = Song.new("Stayin Alive", "The BeeGees")
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all

my_playlist.add(stayin_alive)

puts my_playlist.includes?(stayin_alive) == true

puts my_playlist.display

puts my_playlist.remove(stayin_alive)

puts my_playlist.includes?(stayin_alive) == true # => false


# Reflection 
# # I thoroughly enjoyed designing the code based on the driver 
# tests.   It seems like such a logical way of solving a problem. 
# It helped me create the overall structure, allowing me to design
#  the functions of each method within.  I feel pretty good about
#   the learning competencies of this challenge, though I still need a bit more practice and research on when I need to use the
#     instance variables and when not to.  I'm afraid my code above
#      is redundant. Do I really need to call the @list_array every
#       time?