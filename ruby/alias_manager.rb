puts "What is your first name?"
given_first = "Felicia"

puts "What is your last name?"
given_last = "Torres"

given_name = [given_first, given_last]
p given_name

swapped_name = [given_last, given_first]
p swapped_name

	vowels = ["a","e","i","o","u"]
	consonants	= ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]

swapped_name_characters = swapped_name.join.downcase.split('')
p swapped_name_characters

swapped_name_characters.map! do |character|
	if vowels.include?(character)
		following_vowel = vowels.index(character) + 1
			if character == "u"
				vowels[following_vowel] = "a"
			end
		vowels[following_vowel]
	elsif consonants.include?(character)
		following_consonant = consonants.index(character) + 1
			if character == "z"
				consonants[following_consonant] = "b"
			end
		consonants[following_consonant]
	else
		p "Please enter a valid character"
	end
end

p swapped_name_characters.join.capitalize

p "Vussit Gimodoe"