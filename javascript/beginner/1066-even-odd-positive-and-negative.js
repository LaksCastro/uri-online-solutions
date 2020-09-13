const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let positives = 0;
let negatives = 0;

let odd = 0;
let even = 0;

for (let i = 0; i < 5; i++) {
  const num = Number(lines.shift());

  if (num % 2 === 0) {
    even++;
  } else {
     odd++;
  }

  if (num > 0) {
    positives++;
  } else if (num < 0) {
    negatives++;
  }
}

console.log(even + " valor(es) par(es)");
console.log(odd + " valor(es) impar(es)");

console.log(positives + " valor(es) positivo(s)");
console.log(negatives + " valor(es) negativo(s)");
