class Santa

#Speak method
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

#Milk and Cookies method:

def eat_milk_and_cookies(cookie)
	puts "That was a good #{cookie}! "
end

#Initialize method
def initialize
	puts "Initializing Santa instance ..."
end

end

santa_clause = Santa.new 

puts santa_clause.speak 
puts santa_clause.eat_milk_and_cookies("raisin")
