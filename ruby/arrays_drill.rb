 pizza_toppings = [ ]

 pizza_toppings << "cheese"
 pizza_toppings << "pepperoni"
 pizza_toppings << "sausage"
 pizza_toppings << "mushrooms"
 pizza_toppings << "olives"
p pizza_toppings

pizza_toppings.delete_at(2)
p pizza_toppings

pizza_toppings.insert(2, "pineapple")
p pizza_toppings

pizza_toppings.shift
p pizza_toppings
p "Does this contain cheese: " + pizza_toppings.include?("cheese").to_s

burger_toppings = ["onions", "tomatoes", "lettuce", "cheese"]

food_toppings = pizza_toppings + burger_toppings
p food_toppings




