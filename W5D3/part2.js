function titleize(arr, printCallback){
  const new_arr = arr.map(x => `Mx. ${x} Jingleheimer Schmidt`);
  printCallback(new_arr);
}

function printArray(arr){
  arr.forEach(function(element){
    console.log(element);
  });
}

// Each elephant should have a name, height (in inches), and array of tricks in gerund form (e.g. "painting a picture" rather than "paint a picture").

function Elephant(name,height,tricks){
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  return `${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`
}
Elephant.prototype.grow = function() {
  this.height += 12;
}
Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
}
Elephant.prototype.play = function() {
  return `${this.name} is ${this.tricks[Math.floor(Math.random() * this.tricks.length)]}`
}

const dumbo = new Elephant('Dumbo', 60, ['painting a picture', 'juggling pins', 'flying']);

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant){
  console.log(`${elephant.name} is trotting by!`);
}
//
// herd.forEach(Elephant.paradeHelper);

function dinerBreakfast(){
  this.orders = [];

  function bfastOrders(order){
    this.orders.push(order);
    order_string = this.orders.join(` and `);
    return `I'd like ${order_string} please.`;
  }
  bfastOrders('cheesy scrambled eggs');
  return bfastOrders;
}
let bfastOrder = dinerBreakfast();
console.log(bfastOrder("chocolate chip pancakes"));
console.log(bfastOrder("grits"));
