# class Puppy

# 	def initialize
# 		puts "initializing new puppy instance...."
# 	end 

# 	def fetch(toy) 
# 		puts "I brought back the #{toy}!"
# 	end 

# 	def roll_over
# 		puts "*rolls over*"
# 	end

# 	def puppy_age(integer)
# 		age = integer / 7
# 		age
# 	end 

# 	def barks
# 		puts "Woof woof!"
# 	end 

# end 


class Waitress 

	def initialize(name)
		@name = name 
		@annoyed = false
		puts "initalizing #{@name}"
	end 

	def annoyed
		@annoyed = true
	end 

	def tips_earned(integer)
		if integer >= 50 
			@annoyed = false 
			puts "I earned $#{integer} today. I can pay my bills."
		else 
			@annoyed = true 
			puts "I can't believe I only earned $#{integer} today. Cheapskates."
		end 
	end 

end 


waitress = Waitress.new("Lisa-Marie")

waitress.tips_earned(34)
p waitress












#DRIVER CODE

# rosie = Puppy.new
# vernon= Puppy.new 

# p rosie.fetch("ball")
# p vernon.fetch("squeaky lamb")
# p rosie.roll_over
# p vernon.roll_over
# p rosie.puppy_age(36)
# p vernon.puppy_age(45)
# p rosie.barks 
# p vernon.barks