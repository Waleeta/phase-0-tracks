# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# To include a file that is within the same directory, we use require_relative 
#

require_relative 'state_data'

class VirusPredictor

#Initializes each instance of "VirusPredictor" and takes 3 arguments, sets 3 instance variables to the arguments in the parameter.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Method that returns two other methods within the class, this is the method that's called on the instances to run the other two methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private  

#Method takes 3 arguments, uses an if/else conditional statement to calculate how many people will die according to a multiplier and the population/density by state. 
  def predicted_deaths
    # predicted deaths is solely based on population density
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

#Using a multiplier this calculates how fast a disease spreads throughout the population by population density/state.

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

#Create a loop that iterates through all 50 states to create new instances
#Pass the state_of_origin, population_density, population as parameters
#Print them out using virus_effects method

STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population])
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


# #=======================================================================
# # Reflection Section