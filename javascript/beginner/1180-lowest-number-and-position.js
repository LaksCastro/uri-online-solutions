const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const n = Number(lines.shift());
const arrayN = lines.shift().split(" ").map(item => Number(item));

let lowest = arrayN[0];
let lowestIndex = 0;

for (let index = 1; index < n; index++) {
  const currentNumber = arrayN[index];
  
  if (currentNumber < lowest) {
    lowest = currentNumber;
    lowestIndex = index;
  }
}

console.log("Menor valor: " + lowest);
console.log("Posicao: " + lowestIndex);
