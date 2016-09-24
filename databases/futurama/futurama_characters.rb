# require gems
require 'sqlite3'
require 'faker'

#db is an Instance of Database class - can call methods on it
db = SQLite3::Database.new("futurama.db")


create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS futurama_characters(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255)
)
SQL

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS users(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		character_id INT,
		FOREIGN KEY (character_id) REFERENCES futurama_characters(id)
)
SQL


db.execute(create_table_cmd)
db.execute(create_table_cmd)

puts "Give me your name: "
@user_name = gets.chomp.to_s

puts "Choose 1 for Leela, 2 for Bender, or 3 for Fry: "
@user_choice = gets.chomp.to_i

def character_choice(db, user_choice, user_name)
	db.execute("INSERT INTO users (name, character_id) VALUES ('#{user_name}', '#{user_choice}')")
end 

character_choice(db, @user_choice, @user_name)
# end

@bender_options = [
	"Shut up meatbag.", 
	"Shut up baby I know it.", 
	"Kill all humans.", 
	"Oh...your...God.",
	"Hey sexy mama, wanna kill all humans?",
	"This is the worst kind of discrimination there is: the kind against me!",
	"I guess if you want children beaten, you have to do it yourself.",
	"Hahahahaha. Oh wait you’re serious. Let me laugh even harder.",
	"You know what cheers me up? Other people’s misfortune."]
@fry_options = [
	"So I really am important? How I feel when I'm drunk is correct?", 
	"Huh. Did everything just taste purple for a second?",
	"I prefer (tv) programs of the genre 'World's Blankiest Blank'.",
	"Why am I sticky and naked? Did I miss something fun?",
	"I'll be whatever I wanna do!"]

@leela_options = [
	"idiot.",
	"imbecile.",
	"pile of human garbage.",
	"monster."]

def character_response(db)
	if @user_choice == 1
		puts "Leela says: I hope your " + Faker::Hacker.noun + " explodes, you #{@leela_options.sample}"
	elsif 
		@user_choice == 2
		puts @bender_options.sample
	else 
		puts @fry_options.sample
	end 
end

character_response(db) 

#RETURNS EVERYONE WHO CHOSE BENDER.
#BenderIsGreat

futurama_characters = db.execute("SELECT users.name, futurama_characters.name FROM futurama_characters, users WHERE futurama_characters.id=2 AND users.character_id=2")
puts futurama_characters





#DRIVER CODE: 
# db.execute("INSERT INTO futurama_characters (name) VALUES ('Turanga Leela')")
# db.execute("INSERT INTO futurama_characters (name) VALUES ('Bender Bending Rodriguez')")
# db.execute("INSERT INTO futurama_characters (name) VALUES ('Phillip J Fry')")
#futurama_characters = db.execute("SELECT * FROM futurama_characters") 
#Checking class
#p futurama_characters.class 

#Trying a loop: 
# futurama_characters.each do |character|
# 	puts "#{character[1]} is here!"
# end
