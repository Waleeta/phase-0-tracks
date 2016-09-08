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
#first, create an empty array to "catch" each number. Set index to int number (-1) and each 
  #iteration should push into the array the current index number plus the previous index number in the array.
#Logic: 
  # final_array[2] = final_array[0] + final_array[1]
  # final_array[3] = final_array[1] + final_array[2]
  # final_array[4] = final_array[2] + final_array[3]
  # final_array[5] = final_array[3] + final_array[4]
  
#if int = 6, should return [0,1,1,2,3,5]

def fib(int)
  index = 1 
  final_array = [0,1]
    if int == 1 
      final_array.delete_at(0)
      final_array
    end 
  while index < int -1 
    final_array << final_array[index-1]+final_array[index]
    index += 1 
  end
  final_array
end
  
p fib(10)
p fib(6)

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


