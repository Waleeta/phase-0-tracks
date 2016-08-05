current_year = 2016

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i


puts "What year were you born?"
birth_year = gets.chomp.to_i


puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp

if age == (current_year - birth_year) && ((garlic_bread == "Yes") || (insurance == "Yes"))
			puts "Probably not a vampire."
	elsif age !=(current_year - birth_year) && ((garlic_bread == "No") && (insurance == "No"))
			puts "Almost certainly a vampire."
	elsif age !=(current_year - birth_year) && (garlic_bread == "No") || (insurance == "No"))
			puts "Probably a vampire."
	elsif name == "Drake Cula" || name == "Tu Fang"
			puts "Definitely a vampire."
	else 
		puts "Results inconclusive."
end

# use separate if statements
#create a variable that changes status with each iteration of the if statements.





