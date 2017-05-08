class Puppy

  # Fetch method
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  # Add a speak method that takes an integer then prints 'woof!' that many times
  def speak(amount_of_barks)
  	# Change input to an integer so that .times can be called on the argument
  	amount_of_barks = amount_of_barks.to_i
  	amount_of_barks.times do
  		puts "woof!"
  	end
  end
  
  #Roll Over Method
  def roll_over
  	puts "Roll Over Puppy"
  end

  #Dog years method
  def dog_years(human_years)
  	human_years = human_years.to_i
  	dogs_human_age = human_years * 7.5
  	puts "The puppy is #{dogs_human_age} human years old"
  end

  #Additional Method (Whichever I choose)
  # Sit method
  def sit
  	puts "Puppy has sit down"
  end

end


# Driver Code
# initializes new instance of puppy
poodle = Puppy.new
# Verify that the instance can now fetch a ball
poodle.fetch("ball")
# Verify that the method that takes an integer, and then prints "Woof!" that many times.
poodle.speak(3)
# Verify that the roll_over method prints out "Roll over puppy"
poodle.roll_over
# Verify that the dogs years method takes an integer(human years) and converts it into dog years
poodle.dog_years(3)
# Verify that the puppy can sit
poodle.sit