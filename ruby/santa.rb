class Santa
  #Speak Method
  def speak
  	puts "Ho, ho, ho! Haaaappy holidays!"
  end

  #Eat Milk and Cookies Method
  def eat_milk_and_cookies(cookie_type)
  	puts "That was a good #{cookie_type}"
  end

  #initialize method
  def initialize
  	puts "Initializing Santa instance ..."
  end

end

santa_one = Santa.new
santa_one.speak
santa_one.eat_milk_and_cookies("snickerdoodle")
