# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# "relative" requires an absolute path. "require_relative" uses a relative path.
# They bring all the data into the line they are called on.
#
require_relative 'state_data'

class VirusPredictor

#initializes instance variables: 
#INPUT: state = string, population = integer, and population density = float
#OUTPUT: nothing
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#calls two other methods:  and speed_of_spread
#INPUT: nothing
#OUTPUT: prints to the console
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  def self.state_report
    #iterate through each of the states
    STATE_DATA.each do | state, pop_stats |
      #create new instances for each state
      state_object = VirusPredictor.new(state, pop_stats[:population_density], pop_stats[:population])
      state_object.virus_effects
    end
     # and then run virus_effects method
  end

  private

#takes the population density calculates number of deaths
#INPUT: population density = float, population = integer, state = string
#OUTPUT: prints to console
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      death_multiplier =  0.4
    elsif @population_density >= 150
      death_multiplier =  0.3
    elsif @population_density >= 100
      death_multiplier =  0.2
    elsif @population_density >= 50
      death_multiplier = 0.1
    else
      death_multiplier = 0.05
    end

    number_of_deaths = (@population * death_multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#takes the pop density and multiplies it by speed
#INPUT: population density = float, state = string
#OUTPUT: prints to console
  def speed_of_spread#(population_density, state) #in months
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

VirusPredictor.state_report

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
  # => and : after a key are two ways to assign a value to the key

# What does require_relative do? How is it different from require?
  # "relative" requires an absolute path. "require_relative" uses a relative path.
  # They bring all the data into the line they are called on.

# What are some ways to iterate through a hash?
  # call a .each method to loop through each of the keys
  
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  #

# What concept did you most solidify in this challenge?
  #
