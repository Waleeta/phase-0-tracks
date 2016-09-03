#Takes a STRING as a name.
#Swaps the first and last name
#Change all vowels to next vowel in 'aeiou' by 
	#ITERATING through and refering to the VOWEL INDEX
#Change each consonant to the .next in the alphabet 
#Keep in mind SPACES
#So, "Waleeta Canon" would become "Depup Xemiive"

def alias_maker(name)
	name.downcase!
	new_name = name.split(" ") #Array 
	new_name.reverse! #reversed Array 
	reversed_name = new_name.join(" ")
	reversed_name.split("")
	reversed_array = reversed_name.each_char.to_a 
	reversed_array.map! do |letter|
			letter = letter.next 
	end 
	alias_string = reversed_array.join("")
	
end 

puts "Please keep giving me a first and last name, or type 'quit' to end the program: "
name = gets.chomp.downcase 

fake_names = []

until name == "quit"
fake_names << alias_maker(name)
name = gets.chomp 
end 

p fake_names
