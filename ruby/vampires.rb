puts "What is your name?"
name = gets.chomp

	if (name == "Drake Cula" || name == "Tu Fang")
		name = true
	else
		name = false
	end
	
puts name

puts "How old old are you?"
stated_age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i

actual_age = 2016 - year_born

puts stated_age
puts actual_age

	if stated_age == actual_age
		age = false
	else
		age = true
	end

puts age

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp

	if garlic == "no"
		garlic = true
	else
		garlic = false
	end
	
puts garlic

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp
	
	if insurance == "no"
		insurance = true
	else
		insurance = false
	end
	
puts insurance


if name
	puts "Definitely a vampire"
elsif !age && !(garlic || insurance)
	puts "Probably not a vampire"
elsif age && (garlic || insurance)
	puts "Probably a vampire"
elsif age && (garlic && insurance)
	puts "Almost certainly a vampire"
else
	puts "Results inconclusive"
end

