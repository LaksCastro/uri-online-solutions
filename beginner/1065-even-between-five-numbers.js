const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let evenCount = 0;
for (let i = 0; i < 5; i++) {
  const num = Number(lines.shift());
  if (num % 2 === 0) evenCount++;
}
console.log(evenCount + " valores pares");
