puts "How many?"
num = gets.chomp.to_i 

def vampire 
current_year = 2016
vampire_status = "Results inconclusive" 

puts "what's your name?"
name = gets.chomp 

puts "What's your age?"
age = gets.chomp.to_i 

puts "What year were you born?"
birth_year = gets.chomp.to_i 

puts "Do you want garlic bread? Y/N"
garlic_bread = gets.chomp 

puts "Do you want health insurance? Y/N"
insurance = gets.chomp

puts "List your allergies:"
allergies = gets.chomp.downcase

until allergies == "done" || allergies == "sunshine"
	print "next allergy:"
	allergies = gets.chomp.downcase
end

if age == (current_year - birth_year) && (garlic_bread == "Y" || insurance == "Y")
	then vampire_status = "Probably not a vampire" 
end

if age != (current_year - birth_year) && (garlic_bread == "N" || insurance == "N")
	then vampire_status = "Probably a vampire." 
end

if age != (current_year - birth_year) && (garlic_bread == "N" && insurance == "N")
	then vampire_status = "Almost certainly a vampire" 
end

if name == ("Drake Cula") || (name == "Tu Fang")
	then vampire_status = "DEFINITELY a vampire."
end

if allergies == "sunshine"
	then vampire_status = "Probably a vampire."
end


puts vampire_status
end

(num).times do vampire
end

print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."