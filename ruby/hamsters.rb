# Asks Hamsters Name
puts "What is the hamster's name"
hamster_name = gets.chomp
# Asks how loud the hamster is
puts "How loud is the hamster? (on a scale from 1-10)"
hamster_volume_level = gets.chomp
# Asks what fur color the hamster has
puts "What fur color does the hamster have?"
hamster_fur_color = gets.chomp
# Asks the adoption condition of the hamster
puts "Is this hamster a good canidate for adoption"
hamster_adoption_canidate = gets.chomp
# Asks the estimated age of the hamster
puts "What is the estimated age of the hamster (Integers Please)"
hamster_estimated_age = gets.chomp
#Strips the input recieved then tests if its empty, if not empty with round to the nearest integer.
  hamster_estimated_age = gets.strip
  if hamster_estimated_age.empty?
    hamster_estimated_age = nil
  else
    hamster_estimated_age = number.to_i
  end
