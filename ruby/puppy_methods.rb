class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	puts "Woof!" * number
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	puts human_years * 7
  end

  def high_five
  	puts "*high five*"
  end

  def initialize
  	puts "Initializing new puppy instance ..."
  end

end

class Kitten

	def initialize
		puts "Initializing new kitten instance ..."
	end

	def eat(food)
		puts "I ate a #{food}."
	end

	def scratch(object)
		puts "Woops! I scratched up a #{object}."
	end

end

#DRIVER CODE

spot = Puppy.new
spot.fetch("ball")
spot.speak(3)
spot.roll_over
spot.dog_years(3)
spot.high_five

kitten_array = []
50.times do |kitten|
	kitten = Kitten.new
	kitten_array << kitten
end

kitten_array.each do |kitten| 
	kitten.eat("treat")
	kitten.scratch("couch")
end
