#Takes a STRING as a name.
#Swaps the first and last name
#Change all vowels to next vowel in 'aeiou' by 
	#ITERATING through and refering to the VOWEL INDEX
#Change each consonant to the .next in the alphabet 
#Keep in mind SPACES
#So, "Waleeta Canon" would become "Depup Xemiive"

def alias_maker(name)
	vowels = "aeioua" 
	consonant = "bcdfghjklmnpqrstvwxyzb"
	new_name = ""
	name.each_char do |letter|
		if vowels.include?(letter) #if the letter = vowel, make a new letter 
			new_letter = vowels[vowels.index(name[letter]) +1] #index of vowels, find the letter in the name, and increment by 1 in the VOWEL index. Ruby reads block methods right to left. So >> [vowels.index(name[letter]) +1] needs to evaluate to a number(index)
			new_name << new_letter
		elsif 
			consonant.include?(letter)
			new_letter = consonant[consonant.index(name[letter]) +1]
			new_name << new_letter
		elsif 
			name[letter] == " "
			new_name <<	name[letter]
		end
	end 
	new_name = new_name.split(" ")
	new_name.reverse!
	new_name = new_name.join(" ")
end 



puts "Please keep giving me a first and last name, or type 'quit' to end the program: "
name = gets.chomp.downcase 

fake_names = {}

until name == "quit"
fake_names[name] = name 
fake_names[name] = alias_maker(name)
name = gets.chomp 
end 

fake_names.map do |original_name, alias_name|
	puts "#{original_name} became #{alias_name}"
end 

	

	

