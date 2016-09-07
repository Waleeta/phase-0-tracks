class Santa 
	
	attr_reader :age, :ethnicity, :age 
	attr_accessor :age 

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
		@beard_length = 0 
		@naughty = false 
	end 

	def speak
		puts "Ho ho hoooo...Merry Christmas!"
	end 

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
	
	def celebrate_birthday(age)
			@age = age + 1 
	end 
	
	def beard_length(inches)
		@beard_length = inches
	end 
	
	def decides_if_naughty
	  	if @beard_length >= 20 
	  		@naughty
	  	else 
	  		@naughty = true 
	  	end
	  end 
		
	def gets_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.insert(-1, reindeer_name)
	end 
		
	def about 
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Age: #{@age} "
		puts "Beard length: #{@beard_length} inches"
		puts "Thinks you're naughty: #{@naughty}"
		puts "---------------------------------------------------"
	end 
end 

gender_sample = ["female", "male", "agender", "transgender", "polygender", "prefer not to answer", "cis gender", "gender-less", "bigender", "androgynous", "gender-fluid", "transsexual"]
ethnicity_samples = ["Black", "South Asian", "East Asian", "Latino", "Caucasian", "Middle Eastern", "Indigenous American", "of mixed and private race", "sub-Saharan African", "Central African", "North African", "Western European"]
beard_sample = [5, 7, 2, 30, 6, 3, 100, 10, 24, 11, 18, 13, 45]

#Driver Code:
santa = Santa.new("female", "Black")

#CHECKS GET_MAT_AT METHOD: 
p santa.gets_mad_at("Prancer") 

#CHECKS SANTA'S CELEBRATE BIRTHDAY METHOD AND AGE: 
p santa.celebrate_birthday(45)
p santa.age

santas = []

#CREATE LOTS OF SANTAS 
60.times do 
santas << Santa.new(gender_sample.sample, ethnicity_samples.sample)
end 

#ADDS RANDOM BEARD LENGTH FROM LIST: 
santas.each do |santa|
	santa.beard_length(beard_sample.sample)
end 

#UPDATES AND STORES WHETHER YOU'RE ON THE NAUGHTY LIST:
santas.each do |santa|
	santa.decides_if_naughty
end 

#CHECK SETTERS: 
#CHANGES SANTA'S AGE TO A RANDOM AGE BETWEEN 0-140:
santas.each do |santa|
	new_age = rand(0...140)
	santa.age = new_age
end 

#CHECK GETTERS (AGE AND ETHNICITY) AFTER THEY HAVE BEEN RANDOMLY SET ABOVE: 
santas.each do |santa|
	p santa.age 
end 

#RANDOM ETHNICITIES ASSIGNED AND READ:
santas.each do |santa|
	p santa.ethnicity
end 

#AND FINALLY, RETURNS ALL OF OUR SANTA INFORMATION: 

santas.each do |santa|
	santa.about 
end 




	


	




	







# santa = Santa.new 
# p santa.speak
# p santa.eat_milk_and_cookies("chocolate chip")