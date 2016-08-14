
cities = {
	
	chicago:
    		
    		{state: "Illinois", #one key value pair
    			suburbs: {north: "Wheeling", west: "Lombard", south: "Blue Island"}, #hash within a hash
    			weather: ["snow", "humid", "windy"] #array within a hash
    			
    		},
    
    portland: 
    		{state: "Oregon", #one key value pair
    			suburbs: {north: "Bethany" , west: "West Linn" , south:"Stafford" , east: "Beaverton"}, #hash within a hash
    			weather: ["rainy", "cloudy", "sunny"] #array within a hash
    		
			}
}

#prints the first value of chicago weather:
p cities[:chicago][:weather][0]
#prints all of the suburbs of Portland:
p cities[:portland][:suburbs]
#prints Chicago hash, updates to add eastern suburb, prints new updated hash
p cities[:chicago]
cities[:chicago][:suburbs].update(east: "Lake Michigan")
p cities[:chicago]
#Access second weather condition of Portlant
p cities[:portland][:weather][1]
#reverse weather conditions for chicago
p cities[:chicago][:weather].reverse
