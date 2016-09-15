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

function Car(year, make, model) {
console.log("Our new car: ", this);

this.year = year;
this.make = make;
this.model = model;

this.honk = function() {console.log("*HONK HONK*"); };

console.log("New car made.");

}


#DRIVER CODE: 
var car1 = new Car ("2001", "Kia", "Rio");
console.log(car1);
console.log(car1.honk());

var car2 = new Car ("2009", "Toyota", "Yaris");
console.log(car2);
console.log(car2.honk());