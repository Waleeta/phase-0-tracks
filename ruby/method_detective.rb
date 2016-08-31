# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase #swaps each char for opposite case.

# => “InVeStIgAtIoN”

"zom"
"zom".insert(1,"o") #inserts at index number, char
"zom".insert(2,"o")
"zom".sub("o", "oo") #substitutes patter for another pattern.
# => “zoom”

"enhance"
"enhance".center(15) #centers with '15' (or another integer) number of spaces on each side. Can also add other characters instead of spaces.
# => "    enhance    "

"Stop! You’re under arrest!".upcase #makes every letter capital.
# => "STOP! YOU’RE UNDER ARREST!"

"the usual" + " suspects" #two strings can be added.
OR 
a = "suspects" #set variable to a str
a.prepend("the usual ") #'prepend' inserts str BEFORE original string.
#=> "the usual suspects"

OR
"suspects".prepend("the usual ") #can use 'prepend' without setting it to a variable first 
# " suspects".<???>
# => "the usual suspects"

 "The case of the disappearing last letter"
 "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter"
"The mystery of the missing first letter".delete("T") #deletes char, but not at index. Any matching char.
OR
"The mystery of the missing first letter".slice(1..-1)) #slices but returns sliced chars - index clarifies which chars to return.
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!"
"Elementary,    my   dear        Watson!".squeeze #removes all byt one space.
# => "Elementary, my dear Watson!"

"z"
"z".ord #returns ASCII value.
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
	#THAT IS ITS PLACE ON THE ASCII INDEX.

"How many times does the letter 'a' appear in this string?"
"How many times does the letter 'a' appear in this string?".count("a") #counts given char in a str
# => 4