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