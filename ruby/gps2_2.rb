# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash to store item and quantity
  	#define a method that takes a string as an argument, the string will be split and then each 
  		#item pushed into the hash with a default quantity.
  		# set default quantity (set it to 1)
  # print the list to the console [can you use one of your other methods here?] 
  	#we can create a different that prints the list with the items: quantities.
# output: [hash]

def create_list(items)
	items_array = items.split(" ")
	grocery_hash = {}
	items_array.each do |item|
		grocery_hash[item] = 1
	end 
	grocery_hash	
end 

grocery_list = {}
grocery_list.merge!(create_list("apples pears oranges"))

# Method to add an item to a list
# input: item name and optional quantity
# steps: push items and their quantities into the empty hash
# output: hash

# Method to remove an item from the list
# input: item
# steps: delete the item by its name
# output: updated hash

# Method to update the quantity of an item
# input: item
# steps: update the item to be equal to a different quantity
# output: updated hash

# Method to print a list and make it look pretty
# input: grocery list hash
# steps: iterate through the hash, print its item: quantity
# output: list