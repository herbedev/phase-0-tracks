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

  #initialize Puppy method that runs every time there is a new instance of the puppy class
  def initialize
  	puts "Initializing new puppy instance ..."
  end

end


# # Puppy Driver Code
# # initializes new instance of puppy
# poodle = Puppy.new
# # Verify that the instance can now fetch a ball
# poodle.fetch("ball")
# # Verify that the method that takes an integer, and then prints "Woof!" that many times.
# poodle.speak(3)
# # Verify that the roll_over method prints out "Roll over puppy"
# poodle.roll_over
# # Verify that the dogs years method takes an integer(human years) and converts it into dog years
# poodle.dog_years(3)
# # Verify that the puppy can sit
# poodle.sit

class Video_Games
  #Initalize method
  def initialize
  	puts "Initializing new video game instance ..."
  end
  #Level Method
  def level(user_level)
  	puts "You are on level #{user_level}"
  end
  #Score Method
  def score(user_score)
  	puts "You have finished the game with a score of #{user_score}"
  end

end
# Video Games Driver Code
# initializes new instance of video games
super_mario = Video_Games.new
# Verifys the instance can now output the user level
super_mario.level(3)
# Verifys the instance can now output the user score
super_mario.score(500)


# Initalize Array to hold instances of class
Video_Games_Array = []

# Use a loop to make 50 instances of your class.
50.times do
	Video_Games_Array << Video_Games.new
end

Video_Games_Array.each do |x|
	# x.initialize
	x.level(3)
	x.score(500)
end
