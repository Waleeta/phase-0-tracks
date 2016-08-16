class Puppy

#Fetch method 
  def fetch(toy)
    puts "I brought back the #{toy}!"
   toy
  end
 
 #Speak method 
		def speak(i)
		index = 0 
		until index == i 
		puts "Woof!"
		index += 1 
	end 
	end

#Roll Over method 
	def roll_over
    puts "*rolls over*"
  end
  
#Dog Years method 
	def dog_years(i)
		p i / 7
	end 
	
#Sneaks food 
	def sneaks(food)
		puts "You're not supposed to eat #{food}!"
	end
	
end

rosie = Puppy.new 


rosie.fetch("ball")
rosie.speak(3)
rosie.roll_over
rosie.dog_years(32)
rosie.sneaks("chocolate")


class Gymnast
#Initialize method 
	def initialize
		print "Initializing new Gymnast instance..."
	end 

#Gymnast Name method: 
	def gymnast_name(name)
		puts "Hello, my name is #{name}, I'm a gymnast!"
	end 

#Gymnast age method: 
	def gymnast_age(age)
		print "I am #{age} years old."
	end 

end 

athlete = Gymnast.new 

#Create an empty array 
gymnast_array = []

#create a loop to make 50 instances to store in empty array 
	index = 0 
	until index == 51 
	coach = Gymnast.new
	gymnast_array << coach
	index += 1 
	end 
	
	puts gymnast_array


#iterate over gymnast_array
#call .age for each instance
gymnast_array.each do |athlete| 
	puts athlete.gymnast_age(10)
end 

#calls age method 
athlete.gymnast_age(16)