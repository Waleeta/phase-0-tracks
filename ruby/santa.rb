class Santa 

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		@beard_length = 0 
		@naughty = false 
	end 

	def speak
		puts "Ho ho hoooo...Merry Christmas!"
	end 

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
	
	def beard_length(inches)
		@beard_length = inches
	end 
	
	def decides_if_naughty
	  	if @beard_length >= 10 
	  		@naughty
	  	else 
	  		@naughty = true 
	  	end
	  end 
	  
	  def celebrate_birthday(age)
	
		end 
		
	def about 
		puts "Gender: #{@gender}."
		puts "Ethnicity: #{@ethnicity}."
		puts "Age: #{@age}: "
		puts "Beard length: #{@beard_length} inches."
		puts "Thinks you're naughty: #{@naughty}."
		puts "---------------------------------------------------"
	end 
end 

gender_sample = ["female", "male", "agender", "transgender", "polygender", "prefer not to answer"]
ethnicity_samples = ["Black", "South Asian", "East Asian", "Latino", "Caucasian", "Middle Eastern", "Indigenous American"]
beard_sample = [5, 7, 2, 30, 6, 3, 100, 10, 24, 11]

#Driver Code:

santas = []
10.times do 

santas << Santa.new(gender_sample.sample, ethnicity_samples.sample)
end 

santas.each do |santa|
	santa.beard_length(beard_sample.sample)
end 

santas.each do |santa|
	santa.decides_if_naughty
end 

santas.each do |santa|
	santa.about 
end 




	




	







# santa = Santa.new 
# p santa.speak
# p santa.eat_milk_and_cookies("chocolate chip")