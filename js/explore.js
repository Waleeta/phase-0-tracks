//Takes a STRING as an argument for the FUNCTION.
//counter should start being equal to the length of the string, and then count down until it reaches 0. 
//print out each letter from last letter to first letter. 

function reverse(str) {
    var new_word = "";
        for (var index = str.length-1; index >= 0; index--)
            new_word += str[index];
            return new_word
}

reverse("waleeta");



//BOOLEAN if else: try one, then the other. 
//var annoyed = true;

var annoyed = false;

if (annoyed) {
console.log("I am SUPER annoyed.");
}
else {
	console.log("Nah I'm straight.");
}



// var puppy = true;
// var cute = true;

var puppy = true;
var cute = false;

// var puppy = false;
// var cute = false;

if (puppy && cute) {
	console.log("This puppy is suuuuuuuuper cute.");
} else if (puppy || cute) {
	console.log("Well at least you're one or the other.");
} else {
	console.log("Awwww...it's ok I still think you're adorable.");
	
}



