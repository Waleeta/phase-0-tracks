
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






//DRIVER CODE TO TEST COMPARE FUNCTION: 
compare({name: "ramsin", age: 36}, {name: "ramsin", age: 30}); //names match
compare({name: "Waleeta", age: 36}, {name: "ramsin", age: 30}); //no matches
compare({name: "ramsin", age: 36}, {name: "waleeta", age: 36}); //ages match
compare({name: "ramsin", age: 30, style: "modern"}, {name: "waleeta", age: 36}); //no matches.