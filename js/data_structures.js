var colors = ["blue", "red", "green", "yellow"]
var names = ["Ed", "Jake", "Kate", "John"]

colors.push("indigo");
names.push("Eric");

var key = names[0]
var obj = {}
obj[key] = colors[0]

console.log(obj);

function Cars(make, model, year) {

	this.make = make;
	this.model = model;
	this.year = year;
	this.accelerate = "Vroom Vroom";
}

var car = new Cars("BMW", "335", "2016");
var car2 = new Cars("Honda", "Civic", "1995");
console.log(car)
console.log(car2)