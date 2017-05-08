class Santa

  # Refactor with attr_reader & attr_accessor to remove getter + setter methods
  attr_reader :ethnicity
  attr_accessor :gender, :age

  #initialize method
  def initialize(gender, ethnicity)
  	@gender = gender
  	@ethnicity = ethnicity
  	@age = 0
  	puts "Initializing Santa instance..."
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

  end

  #Speak Method
  def speak
  	puts "Ho, ho, ho! Haaaappy holidays!"
  end

  #Eat Milk and Cookies Method
  def eat_milk_and_cookies(cookie_type)
  	puts "That was a good #{cookie_type}"
  end

  # Birthday method that changes santa's age by one year
  def celebrate_birthday
  	@age = @age +1
  	@age
  end

  # Get mad at method that moves that reindeer to last place in the rankings
  def get_mad_at(reindeer_name)
  	@reindeer_ranking.delete(reindeer_name)
  	@reindeer_ranking.insert(-1, reindeer_name)
  end

  # #Setter method for @gender to be reassigned from outside the class definition
  # def gender=(new_gender)
  # 	@gender = new_gender
  # end

  # #Getter methods for @age and @ethnicity
  # def age
  # 	@age
  # end

  # def ethnicity
  # 	@ethnicity
  # end

end


# Release 0 Driver code
# santa_one = Santa.new
# santa_one.speak
# santa_one.eat_milk_and_cookies("snickerdoodle")

# Release 1 Driver code
# Code below is too repetitive, so lets try something else

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# Release 2 Driver code

# # Set a new gender from outside the class
# p santas[1].gender = "NEW GENDER"
# # Change a santas age from outside the class
# p santas[1].celebrate_birthday
# # Move the reindeer rudolph to the end of the reindeer rankings
# p santas[0].get_mad_at("Rudolph")
# # Get santas age
# p santas[1].age
# # Get santas ethnicity
# p santas[1].ethnicity

# Release 4 Driver code

# p example_genders.sample
# p example_ethnicities.sample
# p rand(140)


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

50.times do
	santas = Santa.new(example_genders.sample, example_ethnicities.sample)
	santas.age = rand(140)
	puts "This santa is #{santas.ethnicity}, #{santas.gender} and #{santas.age} years old."
end






