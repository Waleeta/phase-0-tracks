# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Define a method that takes a string as an argument, splits the string and iterates through to add each
  	#item separately to a hash with a default value
  # set default quantity to 1
  # print the list to the console [ultimately we can use the print method as long as we are not calling any
	# methods before we actually create the list.]
# output: [hash]

def create_list(items)
	grocery_hash = {}
	items.split.each { |item| grocery_hash[item] = 1 }
print_list(grocery_hash)
return grocery_hash
end 

#grocery_list = create_list("apples pears oranges")
#p grocery_list


# Method to add an item to a list
# input: item name and optional quantity, and grocery list
# steps: method should take the item and quantity and grocery list as arguments, and then add the item 
	#to the grocery hash and set its value to the quantity passed.
# output: original hash plus added item/quantity.

def adds_item(item, quantity, grocery_list)
	grocery_list[item] = quantity
end 

#adds_item("eggs", 1, grocery_list)
#p grocery_list

# Method to remove an item from the list
# input: item
# steps: delete the item by its name
# output: updated hash

def remove_item(item, grocery_list)
	grocery_list.delete(item)
end

#remove_item("apples",grocery_list)
#p grocery_list

# Method to update the quantity of an item
# input: item, quantity, grocery list
# steps: method should take the item name, pass it into the grocery list and set it equal to the new quantity.
# output:
def update(item, grocery_list, quantity)
	grocery_list[item] = quantity
end

#update("eggs", grocery_list, 2)
#p grocery_list


# Method to print a list and make it look pretty
# input: just the grocery list. Although - in the create list method we can use this method 
	# with the original grocery hash. However - we cannot actually call it until after all of the methods.
# steps: iterate through the grocery list hash and print out each key(item) and value (quantity) in a neat row.
# output: a list. 

def print_list(grocery_list)
	grocery_list.each do |item, quantity |
		puts " #{item}: #{quantity} "
	end
end

#Calling the create list method here (and setting it equal to grocery list) means it is created here AFTER the print
	#list method, so the defined methods are all defined BEFORE any method is called: 

grocery_list = create_list("apples pears oranges")
print_list(grocery_list)


# What did you learn about pseudocode from working on this challenge?
	#It is very helpful in thinking through the problem from beginning to end. I can see where you can avoid mistakes if
		#you take your time pseudocoding.

# What are the tradeoffs of using arrays and hashes for this challenge?
	#hashes are the easiest way to store this type of list - arrays weren't really necessary. 

# What does a method return?
	# the last thing that is returned in the method is what any method will return. If you need a final, updated hash
		#from a method, then you must return the hash as the last line.

# What kind of things can you pass into methods as arguments?
	#strings, integers, other methods, other methods with their own parameters.

# How can you pass information between methods?
	#You can pass existing, populated hashes and arrays into method parameters so they can be used
		#throughout the method. Don't forget to return it if you want it updated and if you use that method
			#to pass the updated has!

# What concepts were solidified in this challenge, and what concepts are still confusing?
	#Pretty much all of the above were solidified. I have a better understanding of how to share information
		#between methods when variables are not global or available within the 'world' of a method.













