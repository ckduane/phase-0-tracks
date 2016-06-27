puts "What is your first and last name?"
given_name = gets.chomp

# swap the first last name
	swapped_name = given_name.split(' ').reverse

# retreive individual characters from name
each_character = []
index = 0
	while index < swapped_name.length
		each_character << swapped_name[index].chars
		index += 1
	end


def next_character(character)
	index = 0
	vowels = ["a","e","i","o","u"]
	consonants	= ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
	while index < character.length
	# character is in vowel array is true
	# change all vowels to the next vowel
		if vowels.include?(character)
			following_vowel = vowels.index(character) + 1
			return vowels[following_vowel]
	# character is in consonant array is true
	# change all consonants to the next consonant
		elsif consonants.include?(character)
			following_consonant = consonants.index(character) + 1
			return consonants[following_consonant]
		end
		index += 1
	end
end

p next_character("b")

