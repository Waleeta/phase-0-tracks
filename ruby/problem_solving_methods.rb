#Write a method that takes an ARRAY of INTEGERS, and and INTEGER as arguments
#Method should return the index of the item (or NIL if it doesn't exist)
#Cannot use .index 



def search_array(item1, int)
	if item1.include?(int)
		p item1.index(int)
	else
		return false 
	end 
	
end

#DRIVER CODE:

search_array([3, 6, 19, 33, 4, 23], 19)

#Define a new method that takes in an int 
#Should return an array of terms of Fibonacci numbers
#Method should do int.times add the next number to the previous number 


def fib(num)
  fib_array = []
  num1 = 0 #assigning num1 to equal 0
  num2 = 1 #assigning num2 to equal 1
  
  num.times do #iterating through each number 5 times 
  	new_num = num1 
  	fib_array << num1 = num2 
  	
  	num2 = new_num + num1
  end
  return fib_array
end

fib(6)