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