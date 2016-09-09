def create_list(items)
	grocery_hash = {}
	items.split.each { |item| grocery_hash[item] = 1 }
print_list(grocery_hash)
return grocery_hash
end 

#grocery_list = create_list("apples pears oranges")

#p grocery_list


def adds_item(item, quantity, grocery_list)
	grocery_list[item] = quantity
end 

#adds_item("eggs", 1, grocery_list)
#p grocery_list

def remove_item(item, grocery_list)
	grocery_list.delete(item)
end

#remove_item("apples",grocery_list)
#p grocery_list

def update(item, grocery_list, quantity)
	grocery_list[item] = quantity
end

#update("eggs", grocery_list, 2)
#p grocery_list

def print_list(grocery_list)
	grocery_list.each do |item, quantity |
		puts " #{item}: #{quantity} "
	end
end
grocery_list = create_list("apples pears oranges")
print_list(grocery_list)
# Method to remove an item from the list
# input: item
# steps: delete the item by its name
# output: updated hash