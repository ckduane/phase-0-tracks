puts "What is your first and last name?"
given_name = gets.chomp


# swap the first last name
swapped_name = given_name.split(' ').reverse

# retreive individual characters from name
index = 0
while index < swapped_name.length
	p swapped_name[index].chars
	index += 1
end



# change all vowels to the next vowel
# vowels = ["a","e","i","o","u"]
# consonants = everything else

