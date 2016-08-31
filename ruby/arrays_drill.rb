def build_array(val1, val2, val3)
	printed_array = []
	printed_array.push(val1, val2, val3)
	p printed_array
end

# Because item1 is already being entered as an array, treat it as an array:

def add_to_array(item1, item2) #where item1 = array
	item1.insert(-1, item2) #insert at last index position, the second argument(item2)
end

#OR

def add_to_array2(item1, item2)
	item1.concat(item2) 
end


puppies = []
p puppies

puppies.push("hound", "dalmation", "cocker spaniel", "viszla", "poodle") #for push use ()
p puppies

puppies.delete_at(2) #at index number
p puppies

puppies.insert(2, "labradoodle") #insert at INDEX 2, new_str
p puppies

puppies.delete("hound") #deletes matching str
p puppies

if puppies.include?("viszla") #checks for str
		puts "Yup, it's there!"
	else
		puts "Nah."
end

#combines into a single array, not stored in any variable.
cats = ["fluffers", "ramona"]
p puppies + cats 

#combines two arrays as one array, INTO an array: [[]]
all_animals = []
all_animals << puppies + cats 
p all_animals

#PUSH each array separately, makes an array of an array: [[], []]
all_animals.push(puppies)
all_animals.push(cats) 
p all_animals

#DRIVER CODE
build_array("One", "=", 1) #returns ["One", "=", 1]
build_array(1, 3, 5) #returns [1,3,5]
add_to_array([], "waleeta") #returns ["waleeta"]
add_to_array(["this", "is", "my"], "code") # returns ["this", "is", "my", "code"]
p add_to_array2([1,2,3],["a"]) #Using the concat method, if BOTH arguments are ARRAYS
p add_to_array2(cats,puppies)