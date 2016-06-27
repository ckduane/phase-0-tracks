p "Hit enter to recieve a secret name. To quit, type 'quit'"
input = gets.chomp
	
	if input != "quit"
		
		#asks user for name
		puts "What is your name?"
		given_name = gets.chomp
	
		#swaps first and last name
		swapped_name = given_name.split(' ').reverse
	
		#lists vowels and consontants
		vowels = ["a","e","i","o","u"]
		consonants	= ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
		
		#set swapped name into an array of individual characters
		swapped_name_characters = swapped_name.join.downcase.split('')
		
		#cycles through joined list of characters
		#couldnt figure out how to run through array[0], then array[1]
		swapped_name_characters.map! do |character|
			#switches vowels over to next vowel
			if vowels.include?(character)
				following_vowel = vowels.index(character) + 1
					#sets up edge case
					if character == "u"
						vowels[following_vowel] = "a"
					end
				vowels[following_vowel]
			#switches consonants over to next consonant
			elsif consonants.include?(character)
				following_consonant = consonants.index(character) + 1
					#sets up edge case
					if character == "z"
						consonants[following_consonant] = "b"
					end
				consonants[following_consonant]
			#just in case improper character typed
			else
				p "Please enter a valid character"
			end
		end
	else
		p "Thank you"
	end

p "Results"
p "#{given_name} is actually #{swapped_name_characters.join.capitalize}"
