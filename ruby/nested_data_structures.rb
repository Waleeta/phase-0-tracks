cities = {

 washington_dc: {
    streets: { 
        "K Street" => 900, 
        "Columbia" => 2000, 
        "U Street" => 1400}, 
    
    weather: ["sunny", "dry winters", "humid"],

    airports: { 
        "BWI" => "Baltimore, MD", 
        "DCA" => "Arlington, VA",
        "Dulles" => "Dulles, VA"
                }
            },

chicago: {
            streets: {
                "Ashland" => 800,
                "Divison" => 1200,
                "Madison" => 0
            },

            weather: ["windy", "heavy snow", "humid"],

            airports: {
                "MDW" => "Chicago, IL",
                "O'Hare" => "Chicago, IL"
            }
        }
}

#DRIVER CODE: 

#Access airport cities:
p cities[:washington_dc][:airports]["BWI"]
p cities[:chicago][:airports]["MDW"]

#change weather:
p cities[:chicago][:weather].push("very cold")
cities[:washington_dc][:weather][0] = "pleasant, always"
p cities[:washington_dc][:weather]

#change address:
p cities[:chicago][:streets]
p cities[:chicago][:streets]["Ashland"] = 200
p cities[:chicago][:streets]

#insert new category into a city 
cities[:washington_dc]["Would I live here."] = false
p cities[:washington_dc]
p cities[:washington_dc]["Would I live here."]
cities[:chicago]["Would I live here."] = true
p cities[:chicago]["Would I live here."]