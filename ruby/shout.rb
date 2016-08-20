# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + "!!!" + " :D"
#   end 

# end

# p Shout.yell_angrily("WHAT")
# p Shout.yell_happily("what")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
  	words + "!!!" + " :D"
  end 

end

class Angry_Woman
	include Shout
end 

class Angry_Man 
	include Shout
end

woman = Angry_Woman.new 
p woman.yell_angrily("WHAT")
p woman.yell_happily("Why hello there")

man = Angry_Man.new 
p man.yell_angrily("WHAT ARE YOU LOOKG AT")
p man.yell_happily("Yes of course")