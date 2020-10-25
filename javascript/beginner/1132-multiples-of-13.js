const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const x = Number(lines.shift());
const y = Number(lines.shift());

let [a, b] = x > y ? [y, x] : [x, y];

let sum = 0;

while (a < b) {
    if (!(a % 13 === 0)) {
      sum += a;
    }
    
    a++;
}

console.log(sum);
