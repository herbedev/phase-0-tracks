class Santa

  #initialize method
  def initialize(gender, ethnicity)
  	@gender = gender
  	@ethnicity = ethnicity
  	@age = 0
  	reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  	puts "Initializing Santa instance #{@gender}, #{@ethnicity} ..."

  end

  #Speak Method
  def speak
  	puts "Ho, ho, ho! Haaaappy holidays!"
  end

  #Eat Milk and Cookies Method
  def eat_milk_and_cookies(cookie_type)
  	puts "That was a good #{cookie_type}"
  end

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

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end




