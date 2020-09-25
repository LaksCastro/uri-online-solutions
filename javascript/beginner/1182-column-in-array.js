const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const column = Number(lines.shift());

const op = lines.shift();

let sum = 0;

for (let x = 0; x < 12; x++) {
  for (let y = 0; y < 12; y++) {
    const num = Number(lines.shift());

    if (y === column) {
      sum += num;
    }
  }
}

console.log((op === "S" ? sum : sum / 12).toFixed(1));
