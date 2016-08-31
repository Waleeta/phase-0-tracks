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