const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const v = Number(lines[0]);
const p = Number(lines[1]);

const rest = v % p;
const value = v / p;

for (let i = 0; i < p; i++) {
  console.log(Math.floor(value) + (i < rest ? 1 : 0));
}
