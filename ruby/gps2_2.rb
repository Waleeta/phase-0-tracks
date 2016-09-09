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
