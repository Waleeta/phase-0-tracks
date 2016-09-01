#Passing a BLOCK to a METHOD (3 different ways):
def greetings
	puts "Bonjour mes amis!"
	yield
end

greetings {|greeting = "Hallo meine Freunde!"| puts greeting}

def greetings
	puts "Bonjour mes amis!"
	yield("Hallo meine Freunde")
end

greetings {|greeting| puts "#{greeting}!"}

def greetings
	greeting = "Hallo meine Freunde!"
	puts "Bonjour mes amis!"
	yield(greeting)
end

greetings {|greeting| puts greeting}

#ITERATE THROUGH ARRAYS AND HASHES:

band_names = ["Killdozer", "Man or Astro Man", "Shellac", "Tune Yards", "Jawbreaker"]

futurama_characters = {	pilot: "Turanga Leela",
	professor: "Hubert Farnsworth",
	doctor: "John Zoidberg",
	bureaucrat: "Hermes Conrad",
	intern: "Amy Wong",
	pet: "Nibbler",
	robot:"Bender Rodriguez"
}

#Bands returned UPCASE but ARRAY isn't modified
band_names.each do |band|
	band.upcase
end 

p band_names

#ARRAY is changed to UPCASE
band_names.map! do |band|
	band.upcase
end 

p band_names


futurama_characters.each do |title, name|
	puts "#{name}'s title is #{title}."
end 
p futurama_characters

#Can also be in one line but tried it with two: 
futurama_characters.map do |title, name|
	puts name
	puts "is a #{title.upcase}."
end 
p futurama_characters

#ARRAY methods with blocks (COMMENT OUT and try ONE AT A TIME):

#deletes Shellac with Boolean
	p band_names
	band_names.delete_if {|band| band.include?("a" && "c")}
	p band_names


#NON-DESTRUCTIVE Select!
	p band_names
	p band_names.select {|band| band == "Tune Yards"}
	p band_names

#DESTRUCTIVE Select!
	p band_names
	band_names.select! {|band| band.include?("e")}
	p band_names
	

#Take_While returns until condition evaluates to true, then stops.
	p band_names
	p band_names.take_while {|band| band.include?("e")}
	

#DROP_WHILE drops up to first FALSE (should drop Killdozer and Man or Astroman as both return true)
	p band_names
	p band_names.drop_while {|band| band.include?("r")}


#FIND_INDEX will return the index number of the satisfied argument
	p band_names
	p band_names.find_index {|band| band.include?("bre")}



#HASH methods with blocks (COMMENT OUT and try ONE AT A TIME):

 #Should delete Nibbler
	p futurama_characters
	futurama_characters.delete_if {|title, name| name.include?("bb")}
	p futurama_characters

# #Destructive REJECT! on a hash:
	futurama_characters.reject! {|title, name| name.include?("Z")}
	p futurama_characters

#SELECT method with boolean (does not return Amy Wong), isn't destructive: 
	futurama_characters.select {|title, name| name.include?("a") || name.include?("i")}
	p futurama_characters

#KEEP_IF method 
	futurama_characters.keep_if {|title, name| title == (:intern)}
	p futurama_characters

#KEEP_IF is destructive, can either do above or below:
	futurama_characters.keep_if {|title, name| name == "Phillip J. Fry"}
	p futurama_characters
