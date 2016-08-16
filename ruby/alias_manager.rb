#Ask a use for a full name 
#Take a user first and last name, swaps them.
# Change each vowel to the next vowel (aeiou becomes eioua) 
# each consonant becomes the .next consonant in the alphabet (so b becomes c, f becomes g, etc)
# print the final encrypted name.

#defines a method that takes a name, reverses it, prints it, splits the name into chars, prints the class (array), 
#map!s each letter to the next letter of the alphabet, stores it in a new variable
def encrypt
	p "Please give me your first and last name"
	name = gets.chomp.to_s.downcase
	name.reverse!
	p name
	new_name = name.split("")
	p new_name.class
	p new_name.map! {|letter| letter.next }
	#p new_name.class
	p final_name = new_name.join("")
end 

#Prompts user for input
p "Would you like to give a first/last name, or quit?"
answer = gets.chomp.downcase

#creates loop
until answer == "quit"
	encrypt
	p "Would you like to give a first/last name, or quit?"
	answer = gets.chomp.downcase

end

#ends the loop with "quit"
if answer == "quit" 
	puts "Thank you, bye."
end

	

#This code does not meet the vowel criteria



