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