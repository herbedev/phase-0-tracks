# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# Just means how we take relational data, meaning data that is stored in tables that are connected, and how we use that data in any scripting language.

# require gems

# Gem is some prewritten ruby that someone else has written for you. Bridges the gap between our database and our ruby program.
# If you havent used a required gem before you are going to have to install it via the terminal, by typing "gem install <gem_name>"

require'sqlite3'
# Helps create fake data for our databases.
require 'faker'

# create SQLite3 database

# ruby equivilant to creating the database through the terminal
# store the database into a variable 'db'
# we should not use a global variable because someone can overwrite the variable.

db = SQLite3::Database.new("kittens.db")
# Formats the SQL output to show as a hash not an array
db.results_as_hash = true

# learn about fancy string delimiters
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
#db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens.
#KittenExplosion

def create_kitten(db, name, age)
  # Security vunerablity to drop data into SQL
  # db.execute("INSERT INTO kittens (name, age) VALUES ('#{name}', #{age})")
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10000.times do
  create_kitten(db, Faker:: Name.name  , 0)
end

# 10000.times do
#   create_kitten(db, Faker::Name.name, 0)
# end


# explore ORM by retrieving data

# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#   puts "#{kitten['name']} is #{kitten['age']}"
# end

# Optional to refer to each kitten data by the index provided by the resulting hash
# kittens.each do |kitten|
#   puts "#{kitten[1]} is #{kitten[2]}"
# end

# Tests to see what the database is outputting
# puts kittens.class
# p kittens
