class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize
		puts "initializing Santa instance..."
	end

end

claus = Santa.new
claus.speak
claus.eat_milk_and_cookies("chocolate chip cookie")