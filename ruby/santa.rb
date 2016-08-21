class Santa
	attr_reader :gender, :age, :eyecolor, :ethnicity, :reindeer_ranking 
	attr_accessor :gender, :age, :eyecolor
	
#Initialize method
	def initialize(gender, ethnicity, eyecolor)
		@gender = gender 
		@ethnicity = ethnicity
		@eyecolor = eyecolor
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

#Speak method
	def speak
		puts "Ho, ho, ho! Merry Christmas!"
	end

#Milk and Cookies method:
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie! "
	end

#Check attributes method:
	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Eye color: #{@eyecolor}"
		puts "Age is: #{@age}"
	end
	
#Celebrate Birthday method
	def celebrate_birthday(age)
		age = age + 1 
	end
#Gets mad at method 
	def get_mad_at(reindeer)
		reindeer_ranking.delete(reindeer)
		reindeer_ranking.push(reindeer)
	end 
	
end

#Driver Code:
	# santa = Santa.new("female", "black", "green") 
	# santa.about
	# santa.speak 
	# santa.eat_milk_and_cookies("chocolate")
	# santa.about

santas = []

genders = ["female", "male", "transgender", "gender-fluid", "cis", "None"]
ethnicities = ["Black", "Middle-Eastern", "South Asian", "Pacific-Islander", "Indigenous American", "East Asian"]
eye_colors = ["grey", "brown", "hazel", "blue", "green", "purple"]


10.times do |add|
	santas << Santa.new(genders.sample(random: genders)[add], ethnicities.sample(random: ethnicities)[add], eye_colors.sample(random: eye_colors)[add])
end 

p santas[9]

santa = Santa.new("female", "white", "blue")
santa.age = 40
p santa
santa.celebrate_birthday(40)
p santa.age
p santa.about

santa = Santa.new("trans", "orange", "white")
santa.age = 69
p santa
santa.celebrate_birthday(69)
p santa.age
p santa.about

santas << Santa.new("female", "Black", "grey")
santas << Santa.new("male", "Middle-Eastern", "brown")
santas << Santa.new("transgender", "South Asian", "hazel")
santas << Santa.new("gender-fluid", "Pacific-Islander", "blue")
santas << Santa.new("cis", "Indigenous American", "green")
santas << Santa.new("None", "East Asian", "purple")
p santas


