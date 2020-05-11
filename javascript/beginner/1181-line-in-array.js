const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const line = Number(lines.shift());

const result = lines.shift() === "S" ? value => value : value => value / 12;

let sum = 0;

for (let x = 0; x < 12; x++) {
  for (let y = 0; y < 12; y++) {
    const value = lines.shift();
    if (x !== line) continue;

    sum += Number(value);
  }
}

console.log(result(sum).toFixed(1));
