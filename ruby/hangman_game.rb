class Hangman
	attr_reader :secret_word, :guessed_word, :guessed_letters, :letters_array 
	attr_accessor :is_over, :guess_limit
	
	
	def initialize(secret_word)
		@secret_word = secret_word
		@guessed_word = []
		@guessed_letters = []
		@is_over = false 
		@letters_array = []
	end 

	def create_word
		@word = @secret_word.split(//)
		@word.length.times do 
			@guessed_word << "__ "
		end 
		@guessed_word
	end

	def check_guess(letter)
		@guess_limit = 0 
		@letters_array << letter 
		if @word.include?(letter)
			letter_index = @word.each_index.select {|i| @word[i] == letter}
			letter_index.each do |index|
				@guessed_word.delete_at(index)
				@guessed_word.insert(index, letter)
				@guessed_word
				end 
		end
		p @guessed_word.join("")
		p @letters_array
	end

end 

#USER INTERFACE: 
puts "Player 1, please give me a secret word: "

secret_word = gets.chomp.downcase
game = Hangman.new(secret_word)
game.create_word
@guess_limit = 0 

puts "Great, thanks! Player 2, start guessing: "

until @is_over == true
	letter = gets.chomp.downcase
	@guess_limit += 1 
	if letter == game.secret_word 
		puts "You did it!"
		@is_over = true 
	elsif 
		@guess_limit == secret_word.length 
		puts "Sorry, you lose."
		@is_over = true 
	 else
		secret_word.include?(letter)
		game.check_guess(letter)
		p @guess_limit
	end
end 

puts "The secret word was #{game.secret_word}!"