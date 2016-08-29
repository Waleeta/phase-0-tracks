

var array1 = ["short", "longestbyfar", "longer", "two", "eleven"];
//sort by .length of each element in an array (longest to shortest)
//then return the first element, which should become the longest.

array1.sort(function(shortest,longest) {
	return longest.length - shortest.length;
});

console.log(array1[0]);
