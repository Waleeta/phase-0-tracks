#get input from user, PUTS questions for name, age, # of kids, decor theme, 
#city, and whether they like paisley.
#STORE the responses in a HASH youo might call interior-decorator.
#PRINT the list of responses
#ASK the use if they want to change anything
	#if NONE, quit the program and print the latest;
	#if YES, ask what they would like to UPDATE and UPDATE the HASH;
		#then PRINT out the updated list when they're done.

interior_decorator = {

}

puts "What is your name: "
interior_decorator[:name] = gets.chomp.to_s

puts "What is your age: "
interior_decorator[:age] = gets.chomp.to_i 

puts "How many kids do you have: "
interior_decorator[:kids] = gets.chomp.to_i 

puts "What is your favorite decor theme: "
interior_decorator[:decor] = gets.chomp.to_s 

puts "Do you like paisley?"
paisley = gets.chomp
	if paisley == "yes"
		paisley = true 
	else 
		paisley = false 
	end 
interior_decorator[:paisley] = paisley 

puts "Here are your responses: "
interior_decorator.map do |questions, answers|
	puts "#{questions}: #{answers}"
end 

#Prompt for updated answer, then create an if/else block to update according to response. e3
puts "Which field would you like to update, or type 'none': "
update_response = gets.chomp.downcase

if update_response == "name"
	puts "Enter your updated response: "
	interior_decorator[:name] = gets.chomp.to_s 
elsif update_response == "age" 
	puts "Enter your updated response: "
	interior_decorator[:age] = gets.chomp.to_i
elsif update_response == "kids"
	puts "Enter your updated response: "
	interior_decorator[:kids] = gets.chomp.to_i 
elsif update_response == "decor"
	puts "Enter your updated response: "
	interior_decorator[:decor] = gets.chomp.to_s
elsif update_response == "paisley"
	puts "Enter your updated response: "
	interior_decorator[:paisley] = gets.chomp
	if interior_decorator[:paisley] == "yes"
		interior_decorator[:paisley] = true
	else
		interior_decorator[:paisley] = false
	end
elsif update_response == "none"
	puts "Great!"
else
	puts "That's not a valid response."
end 

puts "Thank you! Here is your final application: "
	
interior_decorator.map do |questions, answers|
	puts "#{questions}: #{answers}"
end 


	








