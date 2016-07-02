=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "?!" + " :D"
  end
end

#DRIVER CODE
Shout.yell_angrily("oh come on")
Shout.yelling_happily("finally")
=end

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "?!" + " :D"
	end
end

class Person
	include Shout
end

class Bird
	include Shout
end

#DRIVER CODE
child = Person.new
child.yelling_happily("you're it")
child.yell_angrily("you started it")

seagull = Bird.new
seagull.yell_angrily("mine")
seagull.yelling_happily("mine")