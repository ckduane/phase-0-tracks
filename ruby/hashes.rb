designer = {}

# ask designer for client information
puts "Please enter the following client details"

# convert input into appropriate data type
puts "Name:"
designer[:name] = gets.chomp

puts "Age:"
designer[:age] = gets.chomp.to_i

puts "Number of children:"
designer[:number_child] = gets.chomp.to_i

puts "Decor theme:"
designer[:decor_theme] = gets.chomp

puts "Allergic to lime green paint (true/false):"
designer[:green_allergy] = gets.chomp

# print back hash when all questions answered
p designer

# give user chance to update a key
puts "Which question would you like to update? If no updates are needed, type 'none'"
answer = gets.chomp

# update with the new value

# if answer has to be string convert to symbol
if answer != "none"
	answer = answer.to_sym
	puts "What would you like to update #{answer} to?"
	designer[answer] = gets.chomp
# if user writes none, skip the loop
else
	puts "Thank you!"
end

# print latest version of hash
p designer
