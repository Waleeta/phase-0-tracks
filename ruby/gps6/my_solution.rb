# Virus Predictor

# I worked on this challenge [by myself, with: Jack Shelley ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# includes another file in the file where it's located
# require can be used to require modules, and other files from default directory.

require_relative 'state_data'

class VirusPredictor

# Initializes each instance, takes 3 parameters, sets each attribute from STATE-DATA to the given parameters, and makes them available
# throughout the class methods

 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population 
   @population_density = population_density
 end

# Feeds arguments from STATE_DATA into the given methods

 def virus_effects
   predicted_deaths
   speed_of_spread
 end

 private

# A method that returns the death rate according to population density and population of a given state
# and then prints the string with state and number of deaths.

 def predicted_deaths
   # predicted deaths is solely based on population density
   if @population_density >= 200
     decimal = 0.4 
   elsif @population_density >= 150
     decimal = 0.3
   elsif @population_density >= 100
     decimal = 0.2
   elsif @population_density >= 50
     decimal = 0.1
   else
     decimal = 0.05
   end
   number_of_deaths = (@population * decimal).floor

   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

 end


# Takes population density and state, assigns the variable speed (defaulted at 0) gives back how long it will take,
# according to density, the disease will spread.

 def speed_of_spread #in months
   # We are still perfecting our formula here. The speed is also affected
   # by additional factors we haven't added into this functionality.
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

STATE_DATA.each do |state, state_name|

 state = VirusPredictor.new(state, state_name[:population_density], state_name[:population])
 state.virus_effects

end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section`
# STATE_DATA is a constant variable (in that its elements should/can not be changed.) The
  #nested hashes were made into symbols using the : instead of the =>. This makes sense because 
  #symbols are "immutable" and can't be changed, so ideal to use with data you want to remain constant.
# Attributed were made a little clearer for me here. I am still not completely comfortable with Classes but I am hoping 
# with practice and more reading/asking questions I will understand how to use them better. 
# REQUIRE_RELATIVE vs. REQUIRE seems to mean the difference between require a related file and
  #a non-related file. But both do the job of "including" a different file in the current one, so that it can also 
  #be read/used in the file.
# Loops or block mthods can iterate through a hash.
# They seemed redundant, and I wasn't sure why they were necessayr. It turns out the other two methods were 
  #"private", and only usable by the virus_effects method, so that it would be the one called when running the 
  #code on class instances.
# I solidified loops a little more and attribtues a little more, but I still need some work understanding Classes.






