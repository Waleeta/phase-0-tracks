# class: Otter

#Attributes:
	#Fur Color: Brown, White, Black, Red
	#Babies (How many baby otters does it have)
	#Swimming style (On its back, doggy paddles, Simone Manuel)

#Methods:
	#Eats by using a rock to smash oysters open on the tummy
	#Sleeps by holding hands with another otter 
	#Can hold its breath for X amount of minutes.




#I need some guidance regarding pushing all of the class instances into the array. This worked for my Santa class but even with the same syntax, it isn't working here. 

class Otter 
		attr_reader :fur_color, :oysters, :swim
		attr_accessor :fur_color, :oysters, :swim
		
	#Initialize method
		def initialize(fur_color)
			@fur_color = "brown"
	
		end
	
	#Swim method
		def swim(water)
			puts "The otter swims up and down the #{water}!"
		end

	#Babies method 
		def babies(num)
			puts "The otter has #{num} babies!"
		end 
		
	#Oysters method:
		def oysters(i)
			puts "The otter has had #{i} oysters."
		end
	
	#Check attributes method:
		def about
			puts "Fur Color: #{@fur_color}"
		end
	
end

#Driver Code:
	otter = Otter.new(@fur_color) 
	p otter
	otter.swim = "river"  
	otter.oysters(10)
	otter.fur_color = "white"
	p otter
	puts "The otter has #{otter.fur_color} fur!"

#Create an empty array 


#create a loop to make n instances to store in empty array 
#Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type. Store these class instances in an array.
puts 'How many otters would you like to describe: '
number_otters = gets.chomp.to_i 

colors = []
number_kids = []
water_type = []

index = 0 
until index == number_otters
	
puts "Please give me a fur color: "
color = gets.chomp.to_s 
colors << color 

puts "How many babies: "
kids = gets.chomp.to_i 
number_kids << kids 

puts "Does it swim in the sea, the river, or not at all: "
swims = gets.chomp.to_s 
water_type << swims 

index += 1 
end 

p colors 
p number_kids
p water_type

otters = []

p colors.length.times do |add|
	otters << Otter.new(color[add], kids[add], swims[add])
end 

p otters 
 








