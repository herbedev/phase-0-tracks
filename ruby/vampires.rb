#Welcome message
puts "Welcome to Werewolf Inc."

#Asks employee their name (String)
puts "What is your name?"
employee_name = gets.chomp

#Asks employee their age and what year they were born (Integers)
puts "How old are you?"
employee_age = Integer(gets.chomp)

puts "What year were you born?"
employee_birth_year = Integer(gets.chomp)

#Asks employee if they would like garlic bread (Boolean)
puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
employee_garlic_bread_preference =  gets.chomp

#Asks employee if they would like health insurance (Boolean)
puts "Would you like to enroll in the company’s health insurance? (y/n)"
employee_health_insurnace = gets.chomp