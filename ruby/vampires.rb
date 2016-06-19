puts "What is your name?"
name = gets.chomp

	if name == "Drake Cula"
		name = false
	elsif name == "Tu Fang"
		name = false
	else
		name = true
	end
	
puts name

puts "How old old are you? What year were you born?"
age = gets.chomp.to_i

	if age <= 130
		age = true
	else
		age = false
	end

puts age

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp

	if garlic == "yes"
		garlic = true
	else
		garlic = false
	end
	
puts garlic

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp
	
	if insurance == "yes"
		insurance = true
	else
		insurance = false
	end
	
puts insurance


case
when age && (garlic || insurance) == true
	puts "Probably not a vampire"
when age && (garlic || insurance) == false
	puts "Probably a vampire"
when age && (garlic && insurance) == false
	puts "Almost certainly a vampire"
when name == false
	puts "Definately a vampire"
else
	puts "Results inconclusive"
end

