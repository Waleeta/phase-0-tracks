#Takes a STRING as a name.
#Swaps the first and last name
#Find the vowels in the name, and the index of each vowel of the name, and change it to the NEXT vowel in a vowel string
#Change each consonant to the .next in the alphabet 
#Keep in mind SPACES
#So, "Waleeta Canon" would become "Depup Xemiive"

def alias_maker(name)
	vowels = "aeioua" 
	consonant = "bcdfghjklmnpqrstvwxyzb"
	new_name = ""
	name.each_char do |letter|
		if vowels.include?(letter) 
			new_letter = vowels[vowels.index(letter) +1] 
			new_name << new_letter
		elsif 
			consonant.include?(letter)
			new_letter = consonant[consonant.index(letter) +1]
			new_name << new_letter
		elsif 
			name[letter] == " "
			new_name <<	name[letter]
		end
	end 
	new_name = new_name.split(" ")
	new_name.reverse!
	#&operator used with procs (symbols) and is shorthand for a block method:
	new_name = new_name.map(&:capitalize).join(' ')
end 


puts "Please keep giving me a first and last name, or type 'quit' to end the program: "
name = gets.chomp.downcase

fake_names = {}
until name == "quit"
fake_names.store(name, alias_maker(name))
name = gets.chomp.downcase 
end 

fake_names.map do |original_name, alias_name|
	puts "#{original_name} became #{alias_name}."
end 