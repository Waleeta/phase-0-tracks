class Hangman
	attr_reader :letter, :secret_word, :guessed_word, :guessed_letters 
	
	
	def initialize(secret_word)
		@secret_word = secret_word
		@guessed_word = []
		@letter = letter
		@guessed_letters = []
	end 

	def create_word
		@word = @secret_word.split(//)
		@word.length.times do 
			@guessed_word << "__ "
		end 
		@guessed_word
	end

	def check_guess(letter)
		if @word.include?(letter)
			#returns an array where the indexes of the letter guessed is found:
			letter_index = @word.each_index.select {|i| @word[i] == letter}
				letter_index.each do |index|
				@guessed_word.delete_at(index)
				@guessed_word.insert(index, letter)
				@guessed_word
				end 
		end 
		@guessed_word.join(" ")
		p @guessed_word
	end

	
end 

#Driver code:
#game = Hangman.new("unicorn")
#game.check_guess('n')
#game.check_guess('u')

#USER INTERFACE: 
puts "Player 1, please give me a secret word: "
secret_word = gets.chomp.downcase
game = Hangman.new(secret_word)
game.create_word

puts "Great, thanks! Player 2, start guessing: "

puts "Give me a letter: "
secret_word.length.times do 
letter = gets.chomp.downcase
break if letter == secret_word
	if letter == secret_word
		puts "Great job!"
	elsif 
		secret_word.include?(letter)
		game.check_guess(letter)
	else
		letter = gets.chomp.downcase
	end 
end

puts "The secret word was #{game.secret_word}!"


