puts "What is the hamster's name"
name = gets.chomp

puts "How loud is the hamster, between one 1-10?"
volume = gets.chomp

until volume.to_i >1 && volume.to_i <10
	 puts "Please make it 1-10."
	volume = gets.chomp
end

puts "What is the hamster's fur color?"
color = gets.chomp

puts "Is the hamster adoptable?"
adoption = gets.chomp
adoption = "Yes" || "No"

puts "How old is the hamster?"
age = gets.chomp
age = age.to_f
age.is_a? Float
if age == " "
	then age = nil
end


#until age.is_a? Numeric || age == nil
#	puts "Please enter a valid number."
#	age = gets.chomp
#end

#until age.is_a?(Numeric) do
 # print "Please enter a number: "
  #age = gets.chomp
#end


puts "The hamster's name is #{name}."
puts "The hamster's volume level is #{volume}"
puts "The hamsters is #{color}."
puts "Is the hamster adoptable? #{adoption}."
puts "The hamster is #{age} years old." 

