module Shout 

	def self.yell_angrily(words)
    	words + "!!!" + " :("
  	end
	
	def self.yell_happily(words)
		words + "!!!!" + " ;-D"	
	end
end 



#DRIVER CODE:
p Shout.yell_angrily("WHAT THE F___")
p Shout.yell_happily("OH MY GOD")