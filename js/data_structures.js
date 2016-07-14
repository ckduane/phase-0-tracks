var colors = ["blue", "green", "pink", "orange"];

var names = ["lucky", "four hooves", "long tail", "ed"];

colors.push("yellow");

names.push("sea biscuit");

console.log(colors);
console.log(names);

var horses = {};

for (var i = 0; i < names.length; i++) {
 horses[names[i]] = colors[i];
}

console.log(horses)

// Create a constructor function for a car
// Give it a few different properties of various data types
// Include at least one function
// Create a few cars

function Car(make, model, year, isDomestic) {
  this.make = make;
  this.model = model;
  this.year = year;
  this.isDomestic = isDomestic;
  
  this.drives = function() {
    console.log("This " + make + " " + model + " goes vroom vroom!"); 
    };
  }

var anotherCar = new Car("Toyota", "Prius", 2000, false);
var secondCar = new Car("Honda", "Civic", 1980, false);
var yourCar = new Car("Mini", "Cooper", 2015, false);

console.log(anotherCar);
console.log(secondCar);
anotherCar.drives();
