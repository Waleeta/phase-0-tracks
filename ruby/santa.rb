class Santa

#Speak method
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

#Milk and Cookies method:
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie! "
	end

#Initialize method
	def initialize(gender, ethnicity, eye_color)
		@gender = gender 
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		@eyecolor = eye_color
	end

end

santas = []

genders = ["female", "male", "transgender", "gender-fluid", "cis", "None"]
ethnicities = ["Black", "Middle-Eastern", "South Asian", "Pacific-Islander", "Indigenous American", "East Asian"]
eye_colors = ["grey", "brown", "hazel", "blue", "green", "purple"]

genders.length.times do |add|
	santas << Santa.new(genders[add], ethnicities[add], eye_colors[add])
end 

p santas





