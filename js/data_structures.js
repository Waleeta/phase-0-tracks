var horse_colors = ["brown", "grey", "white", "auburn"];
var horse_names = ["Ed", "Secretariat", "Squirrel the Horse", "Black Beauty"];

horse_colors.push("cream");
horse_names.push("Magic");

var horse_object = {};

for (var index = 0; index <= horse_colors.length; index++) {
	horse_object[horse_names[index]] = horse_colors[index];
	horse_object;
}


//DRIVER CODE: 
console.log(horse_object);