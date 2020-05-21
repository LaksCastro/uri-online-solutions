const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const available = lines[0].split(" ");

const requested = lines[1].split(" ");

let total = 0;

for (let i = 0; i < 3; i++) {
  const x = available[i];
  const y = requested[i];

  const sub = x - y;

  if (sub < 0) total += sub;
}

console.log(Math.abs(total));
