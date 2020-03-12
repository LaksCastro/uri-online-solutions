const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const num = Number(lines.shift());
let evenNumber = num % 2 === 0 ? num : num - 1;

for (let print = 2; print <= num; print+=2) {
  console.log(print + "^2 = " + (print ** 2));
}
