// ******** ARRAY that returns LONGEST STRING *********: 
//sort by .length of each element in an array (longest to shortest)
//then return the first element, which should become the longest.

var array1 = ["short", "longestbyfar", "longer", "two", "eleven"];
var array2 = ["one", "two", "three", "four", "five", "eleven"];

array1.sort(function(shortest,longest) {
	return longest.length - shortest.length;
});

array2.sort(function(shortest,longest) {
	return longest.length - shortest.length;
});



// ************ COMPARES objects ************ :

function compare(object1, object2) {
	//takes two objects and compares their key-value pairs)
	//use comparison == to compare the keys and then values
	//print something different for keys, values, and no matches to test. 
	if (object1.name == object2.name) {
	console.log("names match!");
	}
		else if (object1.age == object2.age) {
	console.log("ages match!");
		}
		else {
			console.log("No matches.");
		}
}


// ************ FUNCTION TO BUILD AN ARRAY OF RANDOM WORDS ************ :
function build_array(integer) {
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var word_array = [];
	var word = "";
	for (var index = 0; index < integer; index++) {
	word += alphabet.charAt(Math.random() * alphabet.length);
	}
	word_array.push(word)
	console.log(word_array);
}






//DRIVER CODE TO TEST COMPARE FUNCTION: 
compare({name: "ramsin", age: 36}, {name: "ramsin", age: 30}); //names match
compare({name: "Waleeta", age: 36}, {name: "ramsin", age: 30}); //no matches
compare({name: "ramsin", age: 36}, {name: "waleeta", age: 36}); //ages match
compare({name: "ramsin", age: 30, style: "modern"}, {name: "waleeta", age: 36}); //no matches.

//DRIVER CODE TO RETURN LONGEST STRING
console.log(array1[0]);
console.log(array2[0]);


//DRIVER CODE TO BUILD ARRAY
build_array(5); 
build_array(8); 
