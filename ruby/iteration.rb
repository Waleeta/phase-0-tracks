##Method w/ block
def new_method
	puts "Status; Green"
	yield ("Some value.")

	puts "Status; Green"
end

new_method {|block1|  puts "This is #{block1}"}

#Define array and has

chi_town = ["Wicker Park", "Edgewater", "Lincoln Park", "Lincoln Square"]
block_numbers = {"Ashland" => 800, "Randolph" => 200, "Division" => 1200, "Armitage" => 1600}

# Iterates through an array
chi_town.each do |neighborhood|
	puts "The neightbord is incorrectly spelled #{neighborhood.next}"
end

# MAP an Array
	p chi_town

	chi_town.map! do |neighborhood|
		neighborhood.reverse
	end

	p chi_town

# Conditional delete of a hash

p block_numbers

	block_numbers.delete_if {|street, block| block > 800}

p block_numbers

#### Conditional selection of an array
p chi_town

	chi_town.select {|neighborhood| neighborhood.length > 10}

p chi_town

### Conditional rejection (w/ bang operator) of an array

p chi_town

	chi_town.reject! {|neighborhood| neighborhood.length < 10}

p chi_town


# Conditionally keeps of a value
p block_numbers

	block_numbers.keep_if {|street, block| block > 1000}

p block_numbers