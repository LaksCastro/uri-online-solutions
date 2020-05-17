const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const cases = Number(lines.shift());

let total = 0;

for (let cas = 0; cas < cases; cas++) {
  const [t, v] = lines.shift().split(" ");
  total += t * v;
}

console.log(total);
