const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let n = Number(lines.shift());

const a = n;

const valores = [];

for (let i = 0; i < a; i++) {
  valores.push(n);
  n--;
}

const result = valores.reduce((a, b) => a * b);

console.log(result);
