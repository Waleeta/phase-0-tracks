
#Define module called Flight
module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude}!"
	end
end

#New class BIRD
class Bird
	include Flight

end

#New class PLANE
class Plane
	include Flight

end

bird = Bird.new 
bird.take_off(800)

plane = Plane.new
plane.take_off(20000) 




