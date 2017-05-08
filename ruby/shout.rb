module Shout
   def self.yell_angrily(words)
    words + "!!!" + " :("
  end
   def self.yell_happily(words)
    words + "!!!" + " :)"
  end
end

p Shout.yell_happily("HAPPY")
p Shout.yell_angrily("ANGRY")