#Write a method that takes an ARRAY of INTEGERS, and and INTEGER as arguments
#Method should return the index of the item (or NIL if it doesn't exist)
#Cannot use .index 



def search_array(array1, int)
	if array1.include?(int)
		p array1.index(int)
else 
	nil
end 
	end 

#DRIVER CODE:

search_array([3, 6, 19, 33, 4, 23], 19)