# Welcome Message
puts "Welcome to the hamster sanctuary!"

# Asks Hamster's Name (String)
puts "What is the hamster's name"
hamster_name = gets.chomp

# Asks how loud the hamster is (Integer)
puts "How loud is the hamster? (on a scale from 1-10)"
hamster_volume_level = Integer(gets.chomp)

# Asks what fur color the hamster has (String)
puts "What fur color does the hamster have?"
hamster_fur_color = gets.chomp

# Asks the adoption condition of the hamster (Boolean)
puts "Is this hamster a good canidate for adoption (t/f)"
hamster_adoption_canidate = gets.chomp

  #If the user inputs t, the value will be true, if the user inputs f the value will be false, if its blank it will be represented as nil

  if hamster_adoption_canidate == "t"
    hamster_adoption_canidate = true
  elsif hamster_adoption_canidate == "f"
    hamster_adoption_canidate = false
  else
    hamster_adoption_canidate = nil
  end

# Asks the estimated age of the hamster (Integer)
puts "What is the estimated age of the hamster in years? (Integers Please)"
#Strips the input recieved then tests if its empty. If not empty will covert to the nearest integer.
  hamster_estimated_age = gets.strip
  if hamster_estimated_age.empty?
    hamster_estimated_age = nil
  else
    hamster_estimated_age = hamster_estimated_age.to_i
  end

#Prints the hamster data to the console.

puts "This hamster's name is #{hamster_name}. He is estimated to be #{hamster_estimated_age} years old. On a scale of 1 to 10, you would say he's a #{hamster_volume_level} for the amount of noise the hamster makes. The hamster has #{hamster_fur_color} fur. It is #{hamster_adoption_canidate} that he's a good candidate for adoption."