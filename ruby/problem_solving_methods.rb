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

#SORTING METHOD: 

#Sort through an array by looking at each number and moving the smallest number all the way to the left until we 
#are left with the biggest number on the right. 
#The loop would have to return the smallest number to a new array each time. It would find the smallest number by comparing each one to the other numbers in the array. We would then delete that number so the next smallest number is the smallest number it would take.

#This code isn't DRY or refactored - but time is almost up to hand it in. It works though!

#Define whatever array of numbers you'd like: 
array1 = [2,7,20,41,89,1001,3,19,15,6,-1,65,234,665,342,0,5000,7000]

def sort_array(array1)
  
first_array = []
second_array = []
third_array = []
array_final = []

array1.map do 
  first_array << array1.min 
  array1.delete(array1.min)
end 

array1.each do 
  second_array << array1.min 
  array1.delete(array1.min)
end 
p array1
array1.each do 
  third_array << array1.min 
  array1.delete(array1.min)
end
  third_array << array1.min
  third_array <<  array1.max 
  array_final << first_array + second_array + third_array
end 

sort_array(array1)


