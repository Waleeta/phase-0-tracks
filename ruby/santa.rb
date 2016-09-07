class Santa 

	def initialize
		puts "Initializing Santa instance..."
	end 

	def speak
		puts "Ho ho hoooo...Merry Christmas!"
	end 

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

end 


#Driver Code:

santa = Santa.new 
p santa.speak
p santa.eat_milk_and_cookies("chocolate chip")