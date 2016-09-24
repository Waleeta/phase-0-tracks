# require gems
require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("futurama.db")
#db.execute("SELECT * FROM futurama_characters") 

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS futurama_characters(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		character_id INT
)
SQL

db.execute(create_table_cmd)


# create_table_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS futurama_users(
#     id INTEGER PRIMARY KEY,
#     name VARCHAR(255),
#     character_id INT,
#     FOREIGN KEY (character_id) REFERENCES (futurama_characters)
#   )
# SQL

# db.execute(create_table_cmd)

# puts "What is your name: "
# user_name = gets.chomp.to_s
# #Name stored in a database: 

# puts "Choose a character: Fry, Leela, Bender: "
# character = gets.chomp.to_s.downcase 
# #User and the character id they chose is stored in a database

# db.execute("INSERT INTO futurama_users (name) VALUES (user_name)")

# def futurama_characters(character)
# 	if character == "bender"
# 		puts "Well I hope your ('Faker::hacker.noun') is ok."
# 	end
# 	#If they choose Bender return something sarcastic.
# 	#If they choose Leela, return a hacker sentence:
# 	#If they choose Fry, return nonsense
# end 

# futurama_characters(character)


# # 100.times do
# #   create_kitten(db, Faker::Name.name, rand(0...20))
# # end



