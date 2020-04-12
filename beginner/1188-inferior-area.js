const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const op = lines.shift() === "S" ? value => value : value => value / 144;

const [x, y] = [12, 12];

const values = [];

let initOn = 5;
let endOn = 6;

let sum = 0;

for (let a = 0; a < x; a++) {
  for (let b = 0; b < y; b++) {
    const value = Number(lines.shift());

    if (a >= 7 && b >= initOn && b <= endOn) {
      sum += value;
    }
  }
  if (a >= 7) {
    initOn--;
    endOn++;
  }
}

console.log(op(sum).toFixed(1));
