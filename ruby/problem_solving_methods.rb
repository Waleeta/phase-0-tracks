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

#SORTING METHOD: 

#Sort through an array by looking at each number and moving the smallest number all the way to the left until we 
  #are left with the biggest number on the right. 
#The loop would have to return the smallest number to a new array each time. 
#It would find the smallest number by comparing each one to the other numbers in the array.

#This code isn't DRY or refactored - but time is almost up to hand it in. It works though!

#Define whatever array of numbers you'd like: 
array1 = [2,7,20,41,89,3,19,15,6]

def sort_array(array1)
  
first_array = []
second_array = []
third_array = []
array_final = []

#adds the LOWEST value number then deletes it.
array1.each do 
  first_array << array1.min 
  array1.delete(array1.min)
end 

array1.each do 
  second_array << array1.min 
  array1.delete(array1.min)
end 

array1.each do 
  third_array << array1.min 
  array1.delete(array1.min)
  third_array << array1.max
end
  array_final << first_array + second_array + third_array
end 

sort_array(array1)


