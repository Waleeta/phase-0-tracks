def create_list(items_string)
	grocery_hash = {}
	items_string.split.each {|item| grocery_hash[item] = 1 }
	grocery_hash
	print_grocery_list(grocery_hash)
	grocery_hash
end 

def add_item(item, quantity, grocery_list)
	grocery_list[item] = quantity
	grocery_list
end 


def remove_item (item, grocery_list)
	grocery_list.delete(item)
	grocery_list
end 


def update_quantity(item, quantity, grocery_list)
	grocery_list[item] = quantity
	grocery_list
end 

def print_grocery_list(grocery_list)
	puts "Here is your current list:"
	puts "--------------------------"
	grocery_list.each do |item, quantity|
	puts "#{item}: #{quantity} needed."	
	end
	puts "--------------------------"
end 

grocery_list = {}
grocery_list = create_list("carrots apples juice tomatoes bacon celery onions garlic peppers")

update_quantity("juice", 9, grocery_list)
update_quantity("tomatoes", 5, grocery_list)
remove_item("peppers", grocery_list)
add_item("canned peas", 3, grocery_list)

#After adding, removing, updating: 
print_grocery_list(grocery_list)



