var colors = ["blue", "red", "white", "gold"];
var names = ["Lucas", "Ivan", "Frida", "Bella"];

colors.push("pink")
names.push("Hiedi")

var horseObject = {},
    i,
    keys =  names //['one', 'two', 'three'],
    values = colors  //['a', 'b', 'c'];

for (i = 0; i < keys.length; i++) {
    horseObject[keys[i]] = values[i];
    horseObject 
}


//for (var i = 0; i < colors.length; i++) {
//	console.log(colors[i]);
//}

//console.log("Like my coat, my horses have many colors " + names['name'] + "-" + colors['colors']);

//============CAR=======================

var car = {model: 'Spot', year: 3, topSpeed: "100mph"};


function Car(model, year, topSpeed) {
	console.log("Our new car:", this);
	this.go = function() { console.log("Vrrrm!"); };
	
	console.log("CAR INITIALIZATION COMPLETE");
}
console.log("Let's build a new car ...");
// Here is where we call that constructor function
// that we just made ...
var anotherCar = new Car("Mustang", 2016, "145mph");
console.log(anotherCar);
console.log("Our new car can go:");
anotherCar.go();
console.log("----");

console.log("Let's build another car ...");
var yetAnotherCar = new Car("280z", 1978, "155mph");
//not printing out new model, NEED TO FIX
console.log(yetAnotherCar.model);
console.log("This new dog can go, too:");
yetAnotherCar.go();
console.log("----");

//NEED TO ADD driver code