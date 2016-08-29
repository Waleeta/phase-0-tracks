//COMPARES objects

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

// ARRAY that returns LONGEST STRING:

var array1 = ["short", "longestbyfar", "longer", "two", "eleven"];
//sort by .length of each element in an array (longest to shortest)
//then return the first element, which should become the longest.

var array2 = ["one", "two", "three", "four", "five", "eleven"]

array1.sort(function(shortest,longest) {
	return longest.length - shortest.length;
});

array2.sort(function(shortest,longest) {
	return longest.length - shortest.length;
});

console.log(array1[0]);
console.log(array2[0]);




compare({name: "ramsin", age: 36}, {name: "ramsin", age: 30});
compare({name: "Waleeta", age: 36}, {name: "ramsin", age: 30});
compare({name: "ramsin", age: 36}, {name: "waleeta", age: 36});
compare({name: "ramsin", age: 30, style: "modern"}, {name: "waleeta", age: 36}); //returns No matches.


