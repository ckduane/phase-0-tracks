puts "How many employees will be processed?"
employees = gets.chomp.to_i
survey = 0

until employees == survey
	survey += 1
	
	puts "What is your name?"
	name = gets.chomp
	
		if (name == "Drake Cula" || name == "Tu Fang")
			name = true
		else
			name = false
		end
		
	
	puts "How old old are you?"
	stated_age = gets.chomp.to_i
	
	puts "What year were you born?"
	year_born = gets.chomp.to_i
	
	actual_age = 2016 - year_born
	
	
		if stated_age == actual_age
			age = false
		else
			age = true
		end
	

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp
	
		if garlic == "no"
			garlic = true
		else
			garlic = false
		end
		
	
	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp
		
		if insurance == "no"
			insurance = true
		else
			insurance = false
		end
		
	
	allergy_phrase = false
	
	puts "List any allergies one by one. Type 'done' when finished or if you do not have any allergies"
	
	until allergy_phrase
		
		allergies = gets.chomp
	
		if allergies == "sunshine"
			allergy_phrase = true
			allergies = true
		elsif allergies == "done"
			allergy_phrase = true
			allergies = false
		else
			allergies = false
			allergy_phrase = false
		end
	end

	
	if allergies
		puts "Probably a vampire"
	elsif name
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

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
