# Method to create a list
# Create a grocery list as a hash with items and their quantities: grocery_list = {"carrots apples cereal pizza"}


def create_list(list) #this takes a string as a parameter. 
	new_list = list.split(" ") #splits the string into an array.
	grocery_list = {} #initialize a hash to store array values.
	index = 0 #Start a loop so it iterates through the length of the array.
		while index < new_list.length 
		grocery_list[new_list[index]] = 2 #Hash[array[counter]]
		index += 1 #increment by one.
		end
	p grocery_list #returns the grocery list.
end

#Our empty hash equals (stores) the output for the create_list method. 
grocery_list = create_list("carrots apples cereal pizza")

#Defines method to add items to list: 
def add_to_list(item, quantity, grocery_list) #grocery_list needed in parameter 
	new_pair = {}
	new_pair[item] = quantity
	grocery_list.merge!(new_pair) 
end

#Used merge! to add more items to the list.
more_items = {"lemonade" => 2, "tomatoes" => 3, "onions" => 1, "ice cream" => 4}
grocery_list.merge!(more_items)
p grocery_list

# Used add method to add one more thing.
add_to_list("wine", 6, grocery_list)

# Define a remove item method. Only need key to remove both key/value grocery_list necessary to pass through. 
def remove_item(item, grocery_list) 
	grocery_list.delete(item)  
end 

remove_item("cereal", grocery_list)
p grocery_list

#Define update quantity method
#Need both key/value, and grocery_list to pass through.
def update_quantity(item, quantity, grocery_list)  
	grocery_list[item] = quantity	
end

update_quantity("onions", 4, grocery_list)
p grocery_list

#Prints it as a list. 
def print_list(grocery_list)
	grocery_list.each do |items, quantities| #block method 
		puts "We need #{quantities} #{items}"
	end
end
	
print_list(grocery_list)


# What did you learn about pseudocode from working on this challenge?
	#Pseudocode is supremely important in trying to organize your logic. If you don't get it right, 
	#you'll struggle through trying to solve the problem.

# What are the tradeoffs of using arrays and hashes for this challenge?
	#Hashes are valuable in storing key value pairs and were best suited for this challenge. 
	#The array was only really useful in splitting the original string to push into a hash to be able
	#to manipulate the values. 

# What does a method return?
	#A method returns the last line of executable code.

# What kind of things can you pass into methods as arguments?
	#other methods, variables, integers, strings.

# How can you pass information between methods?
	#methods can be added inside of other methods. You can create new variables that can push data into other methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?
	#I better understand loops and how to manipulate using methods. I still do not quite understand parameters given to methods.