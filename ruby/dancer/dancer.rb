class Dancer
	attr_reader :name, :age, :card
	attr_accessor :name, :age, :card

	def initialize(name, age)
		@name = name
		@age = age
		@card = []
	end

	def pirouette
		p "*twirls*"
	end

	def tutu(color)
		puts "Isn't my new #{color} tutu so pretty?!"
	end

	def bow
		p "*bows*"
	end

	def queue_dance_with(dancer_name)
		@card << dancer_name
		@card = @card
		#adds all names to an empty array of a dance card.
	end

	def begin_next_dance
		@card.each do |dance|
		p "Now dancing with #{dance}."
		p @card
	 end 
		@card.delete_at(0)
	 	@card = @card
	end
end


puts dancer = Dancer.new("Waleeta Canon", 33 )
puts dancer.queue_dance_with("Mikhail Baryshnikov")
puts @card 
puts dancer.queue_dance_with("Anna Pavlova")
puts @card 
puts dancer.begin_next_dance
puts dancer.tutu("blue")


