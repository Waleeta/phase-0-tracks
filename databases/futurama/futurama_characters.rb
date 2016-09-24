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
user_name = gets.chomp.to_s

puts "Give me a number between 1-3"
user_choice = gets.chomp.to_i

def character_choice(db, user_choice, user_name)
	db.execute("INSERT INTO users (name, character_id) VALUES ('#{user_name}', '#{user_choice}')")
end 

character_choice(db, user_choice, user_name)
# end







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
