const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let getout = false;

let agesLength = 0;
let agesSum = 0;

while (!getout) {
  const age = Number(lines.shift());  
  
  if (age < 0) {
    break;
  }
  
  agesSum += age;
  agesLength++;
}

console.log((agesSum / agesLength).toFixed(2));
