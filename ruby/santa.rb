class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize(gender, ethnicity)
		puts "initializing Santa instance..."
		@gender = gender.to_str
		@ethnicity = ethnicity.to_str
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def about
		puts "Gender: #{@gender}   Ethnicity: #{@ethnicity}"
	end

end

#DRIVER CODE
# claus = Santa.new
# claus.speak
# claus.eat_milk_and_cookies("chocolate chip cookie")

santas = []
diverse_genders = %w[cisfemale agender transmale genderqueer]
diverse_ethnicities = %w[biracial korean thai multiracial]

diverse_genders.length.times do |i|
	santas << Santa.new(diverse_genders[i], diverse_ethnicities[i])
end

santas.each do |sign_up|
	sign_up.about
end