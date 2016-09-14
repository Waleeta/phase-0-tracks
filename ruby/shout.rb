# module Shout 

# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
#   	end
	
# 	def self.yell_happily(words)
# 		words + "!!!!" + " ;-D"	
# 	end
# end 



# #DRIVER CODE:
# p Shout.yell_angrily("WHAT THE F___")
# p Shout.yell_happily("OH MY GOD")



#MODULE
module Shout 

	def yell_angrily(words)
    	words + "!!!" + " :("
  	end
	
	def yell_happily(words)
		words + "!!!!" + " ;-D"	
	end
end 


#CLASSES 
class AngryWoman 
	include Shout 
end 

class AngryMan
	include Shout 
end 

girl1 = AngryWoman.new 
boy1 = AngryMan.new


#DRIVER CODE: 
puts girl1.yell_happily("YES THANK YOU")
puts girl1.yell_angrily("NO THANK YOU")

puts boy1.yell_happily("YOU'RE THE BEST")
puts boy1.yell_angrily("WHAT WHY NOT")