# make a Pokemon class
# CHARACTERISTICS ----------------
# Has an element type
# Can level up
# Has a health point meter

# BEHAVIOR -----------------------
# Attack
# Defend
# Flee

class Pokemon
	attr_reader :health
	attr_accessor :type, :level

	def initialize(type, level)
		@type = type.to_str
		@level = level.to_i
		@health = 100
	end

	def attack(move)
		puts "#{move} was super effective!"
	end

	def defend(move)
		puts "#{move} increased your defense."
	end

	#create a flee method that allows pokemon to run if health is less than 15 points
	def run
		if @health < 15
			puts "You got away safely!"
		else
			puts "Unable to escape!"
		end
	end

	def print
		puts "Type: #{@type}  Level: #{@level}"
	end

end

#DRIVER CODE
=begin
squirtle = Pokemon.new("water", 5)
squirtle.attack("water gun")
squirtle.defend("defense curl")
squirtle.run
=end

#USER INTERFACE
#set up user input array
puts "Welcome to the Pokemon generator! To quit, type 'done'."
pokemans = []

	#create a loop asking for user input
	loop do
		puts "What is the type of your Pokemon?"
		type = gets.chomp.to_str

		if type != "done"
			puts "What level is your Pokemon?"
			level = gets.chomp.to_i
		end

		pokemans << Pokemon.new(type, level)

		break if type == 'done'

	end

#remove the final "done" input
pokemans.pop

pokemans.each { |pokemon| pokemon.print}