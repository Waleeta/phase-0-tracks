# Get information about a client which will include name, age, number of children, decor theme and city.
#print to make sure values are updated from nil 

# Prompt user for any changes to any value (from a list), then update the value depending on their answer (if/else)

#print to make sure hash is updated.


interior_design = {name_: nil, age_: nil, kids_: nil, decor_: nil, city_: nil}


puts "Okay then, let's start: "

puts "What is your first name?"
name = gets.chomp
puts "What is your age?"
age = gets.chomp
puts "How many kids do you have?"
kids = gets.chomp.to_i
puts "What is your favorite decor?"
decor = gets.chomp
puts "What's your city?"
city = gets.chomp

interior_design = {name_: name, age_: age, kids_: kids, decor_: decor, city_: city}

p interior_design

puts "Which one of these would you like to change? name, age, kids, decor, city, or none?"
user_response = gets.chomp

if user_response == "name" 
	puts "what's your new name?"
	new_name = gets.chomp 
	interior_design[:name_] = new_name
else interior_design[:name_] = name
end 

if user_response == "kids" 
	puts "How many kids?"
	new_kids = gets.chomp.to_i 
	interior_design[:kids_] = new_kids
else interior_design[:kids_] = kids
end

if user_response == "decor"
	puts "New fav decor?"
	new_decor = gets.chomp 
	interior_design[:decor_] = new_decor
else
	interior_design[:decor_] = decor
end

if user_response == "age"
	puts "What's your REAL age then?"
	new_age = gets.chomp
	interior_design[:age_] = new_age
else
	interior_design[:age_] = age 
end

if user_response == "city"
	puts "What city?"
	new_city = gets.chomp
	interior_design[:city_] = new_city
else
	interior_design[:city_] = city 
end

if user_response == "none"
	interior_design = interior_design
end
p interior_design


