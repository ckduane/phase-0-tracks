class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	# initialize Santa instance
	# set up variables and defaults
	def initialize(gender, ethnicity)
		puts "initializing Santa instance..."
		@gender = gender.to_str
		@ethnicity = ethnicity.to_str
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	# print out clean list
	def about
		puts "Gender: #{@gender}   Ethnicity: #{@ethnicity}"
	end

	# age santa by 1 year
	def celebrate_birthday
		@age += 1
	end

	# move reindeer name to last in array
	# delete the reindeer and add it to the end of the array
	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking.push(name)
	end

end

#DRIVER CODE

claus = Santa.new("gender non-conforming", "korean")
claus.speak
claus.eat_milk_and_cookies("chocolate chip cookie")
claus.celebrate_birthday
claus.get_mad_at("Vixen")
claus.gender=("trans")
claus.age
claus.ethnicity

santas = []
diverse_genders = %w[cisfemale agender transmale genderqueer]
diverse_ethnicities = %w[biracial korean thai multiracial]

#add random santas
diverse_genders.insert(0, "agender", "female", "bigender", "male", "female", "gender fluid", "N/A")
diverse_ethnicities.insert(0, "black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A")

# add diverse arrays
diverse_genders.length.times do |i|
	santas << Santa.new(diverse_genders[i], diverse_ethnicities[i])
end

# loop through each santa and print readable gender and ethnicity
santas.each do |sign_up|
	sign_up.about
end

# make a buttload of rando santas (50 for now)
# print each of them
randos = []
5.times do |i|
	#add santas with random gender and ethnicity
	randos << Santa.new(diverse_genders.sample, diverse_ethnicities.sample)
	#add random age between 0 to 140 
	randos[i].age=(0..140).to_a.sample
end

#run through all random santas to print
randos.each { |random| puts "#{random.gender}/#{random.ethnicity}/#{random.age}"}
