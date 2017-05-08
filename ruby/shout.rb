# module Shout
#    def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#    def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# p Shout.yell_happily("HAPPY")
# p Shout.yell_angrily("ANGRY")

module Shout

   def yell_angrily(words)
    words + "!!!" + " :("
  end
   def yell_happily(words)
    words + "!!!" + " :)"
  end

end

class Angry_Person
	include Shout
end

class Happy_Person
	include Shout
end

Angry_Person_Instance = Angry_Person.new
p Angry_Person_Instance.yell_angrily("NOO")
p Angry_Person_Instance.yell_happily("YESS")

Happy_Person_Instance = Happy_Person.new
p Happy_Person_Instance.yell_happily("YESS")
p Happy_Person_Instance.yell_angrily("NOO")