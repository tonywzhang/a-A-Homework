
function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}


function madLib(verb, adj, noun) {
  verb = verb.toUpperCase();
  adj = adj.toUpperCase();
  noun = noun.toUpperCase();

  return `We shall ${verb} the ${adj} ${noun}.`;
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

function fizzBuzz(arr){
  var new_arr = [];
  for(i=0; i<arr.length;i++) {
    if ((arr[i]%3 === 0 || arr[i]%5 === 0) && arr[i]%15 != 0) {
      new_arr.push(arr[i]);
    }
  }
  return new_arr;
}

function isPrime(num) {
  for(var i=2;i<num;i++){
    if (num%i === 0) {
      return false;
    }
  }
  return true;
}

function firstNPrimes(num) {
  var prime_array = [];
  var current_num = 2;
  while (prime_array.length < num) {
    if (isPrime(current_num)){
      prime_array.push(current_num);
    }
    current_num+=1;
  }
  return prime_array;
}

function sumOfNPrimes(num) {
  return firstNPrimes(num).reduce((a,b) => a+b,0);
}
console.log(sumOfNPrimes(4));
