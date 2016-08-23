//declare a FUNCTION reverse.
//the funtion should take a STRING as an ARGUMENT.
//the function should LOOP THROUGH EACH letter starting from the last letter.
// it should print each letter, from last to first. 

	function reverse(str) {
		for (var i = str.length; i > -1; i-=1)
	console.log(str[i]);

}

reverse("waleeta");



// var puppy = true;
// var cute = true;

// var puppy = true;
// var cute = false;

var puppy = false;
var cute = false;

if (puppy && cute) {
	console.log("This puppy is suuuuuuuuper cute.");
} else if (puppy || cute) {
	console.log("Well at least you're one or the other.");
} else {
	console.log("Awwww...it's ok I still think you're adorable.");
	
}



