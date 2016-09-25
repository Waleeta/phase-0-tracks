# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# Create SQLite3 database
# Setting it to a variable ("db") helps us interact with it.
db = SQLite3::Database.new("kittens.db") #THIS MAKES THE DATABASE
db.results_as_hash = true
#db.execute("SELECT * FROM kittens")

#learn about fancy string delimiters
create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS kittens(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT
		)
SQL


# create a kittens table (if it's not there already)

db.execute(create_table_cmd)

# add a test kitten
#db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 3)")

# explore ORM by retrieving data
kittens = db.execute("SELECT * FROM kittens")
# p kittens.class
# p kittens
# kittens.each do |kitten|
# 	puts "#{kitten['name']} is #{kitten['age']}."
# end

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
def create_kittens(db, name, age)
	db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

9900.times do 
	create_kittens(db, Faker::Name.name, rand(0..3))
end 



