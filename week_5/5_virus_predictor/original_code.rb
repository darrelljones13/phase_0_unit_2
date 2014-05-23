# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# EXPLANATION OF require_relative
# Require relative tells rspec that there is another ruby file in the same directory that is needed to run the code.
#
require_relative 'state_data'

# The state_data file shows 50 state hashes nested within a hash. The hashes nested within STATE_DATA are using in a type of shorthand.  The keys are being translated into symbols.

class VirusPredictor
  #defining the inititalize method, the first within the VirusPredictor class.  The method has 5 parameters. Instance variables for each are created within the method.
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  #HINT: What is the SCOPE of instance variables? Defining virus_effects method. The instance variables will be the same whenever they are called within the VirusPredictor class.
  def virus_effects  
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method. It puts out a no method error. Not sure what that means, but I read that private methods can only be called within the context of the current object.  In this case, it makes predicted_deaths private.

# Defining predicted_deaths method with 3 parameters.  Calls an if, elsif, else statement to calculate predicted deaths based on population density and rounding down.
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #Defining speed_of_spread method with two parameters. Calls if, elsif, else statement to calulate speed determined by population density.
  def speed_of_spread(population_density, state) #in months. 
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

#NEW DRIVER CODE
# STATE_DATA.each{|key, value| VirusPredictor.new(key).virus_effects} This obviously doesn't work, but it shows what I was thinking.

# REFLECTION

# As far as refactoring this code, I'm not sure what I can do to make this more DRY.  I struggled to wrap my head around what I needed to do to make it more streamlined and less repetitive.   