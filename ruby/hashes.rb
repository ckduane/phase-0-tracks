# ask designer for client information
puts "Please enter the following client details"

# convert input into appropriate data type
puts "Name:"
designer[:name] = gets.chomp

puts "Age:"
designer[:age] = gets.chomp.to_i

puts "Number of children:"
designer[:num_child] = gets.chomp.to_i

puts "Decor theme:"
designer[:decor_theme] = gets.chomp

puts "Allergic to lime green paint (true/false):"
designer[:green_allergy] = gets.chomp

# print back hash when all questions answered
p designer

# give user chance to update a key if they prompt once
puts "Would you like to edit any of the previous information?"
answer = gets.chomp


# if user writes none, skip the loop
if prompt != "none"
	# allow designer to edit value
	puts "To edit the info, type designer[:value] = string"
else
	break
end

# print latest version of hash
p designer