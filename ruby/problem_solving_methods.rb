#Write a method that takes an ARRAY of INTEGERS, and and INTEGER as arguments
#Method should return the index of the item (or NIL if it doesn't exist)
#Cannot use .index 

#Iterates using a "position counter", and returns the count when int is found:
def search_array(item1, int)
  position_count = 0 
  item1.each do |index|
    if int == index 
      return position_count
    else 
      false
    end   
  position_count +=1  
  end 
end

item1 = [2,65,453,34,123,6,88,0,4, 19, 7765]

#DRIVER CODE:
p search_array(item1, 7765)


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