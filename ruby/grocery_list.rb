# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split the string so we can refer to their index. Iterate through and add each item to an empty "grocery list" hash. 
  # set default quantity to 0 
  # print the list to the console [can you use one of your other methods here?]
# output: the output will likely be a hash {item: quantity}

def create_list(items_string)
	items_array = []
	grocery_list = {}
	items_array << items_string.split(" ")
	items_array.flatten!
		items_array.each do |item|
			grocery_list[item] = 0 
		end 
	grocery_list
end 

#Driver code for create_list
p grocery_list = {}
grocery_list.merge!(create_list("carrots apples juice tomatoes"))
p grocery_list


# Method to add an item to a list
# input: item name and optional quantity
# steps: take item (string) and add it to the grocery list hash and set it equal to its quantity.
# output: hash values {item: quantity}

def add_item(item, quantity, grocery_list)
	grocery_list[item] = quantity
	grocery_list
end 

#Driver Code for add_item 
add_item("oranges", 4, grocery_list)
p grocery_list

# Method to remove an item from the list
# input: item name (string) (removing key removes the value)
# steps: delete using string (item name) 
# output: updated hash with item deleted

def remove_item (item, grocery_list)
	grocery_list.delete(item)
	grocery_list
end 

#Driver code for remove_item
p grocery_list
remove_item("carrots", grocery_list)
p grocery_list


# Method to update the quantity of an item
# input: item (string) and an updated value
# steps: set the item (string) to equal a new value
# output: updated hash with each {item: quantity} that reflects the updated quantity of item

def update_quantity(item, quantity, grocery_list)
	grocery_list[item] = quantity
	grocery_list
end 

#Driver code for update_quantity
p grocery_list
update_quantity("juice", 9, grocery_list)
p grocery_list

# Method to print a list and make it look pretty
# input: No input, just a method call
# steps: iterate through the hash and return each key value pair as a list (puts)
# output: a neatly printed list with the item: quantity. 

def print_grocery_list(grocery_list)
	puts "Here is your current list:"
	grocery_list.each do |item, quantity|
	puts "#{item}: #{quantity} needed."	
	end
end 

#Driver Code for printing grocery list

print_grocery_list(grocery_list)