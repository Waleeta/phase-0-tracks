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
        mult =  0.4
    elsif @population_density >= 150
        mult =  0.3
    elsif @population_density >= 100
        mult =  0.2
    elsif @population_density >= 50
      mult = 0.1
    else
      mult = 0.05
    end
    number_of_deaths = (@population * mult).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#Using a multiplier this calculates how fast a disease spreads throughout the population by population density/state.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
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
#STATE_DATA is a constant, meaning it is meant to be un-changed and will issue a warning if changes are attempted. The nested hashes within STATE_DATA
  #are symbols, also indicating they should not be changed but are expected to remain constant.
#Require_relative will include a file in the same directory. Require would mean you would have to refer to the whole directory.
#.map(!), .each are the most common. 
#The variables for virus_effects were all instance variables, which is the first thing I noticed. Ultimately they were not necessary because they are visivle throughout the class.
#The scope of instance variables and how they are used became clearer. Instance variables are visible throughout the class and are given values upon each instance 
  #initialization, which means after initialization, they do not necessarily need to be passed into methods as parameters again (in methods within the class), 
    #because you can jsut refer to them in the actual method code.



