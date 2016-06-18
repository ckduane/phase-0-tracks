puts "What is your name?"
name = gets.chomp

puts "Volume level from 1 to 10?"
volume = gets.chomp.to_i

puts "What is a fun color?"
color = gets.chomp

puts "Are you a good candidate for adoption? (yes/no)"
adoption_string = gets.chomp

if adoption_string == "yes"
	adoption = true
elsif adoption_string == "no"
	adoption = false
end

puts "What is your estimated age?"
age = gets.chomp

if age == ""
	age = nil
else
	age = age.to_i
end

