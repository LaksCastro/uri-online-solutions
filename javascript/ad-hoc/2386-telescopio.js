const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const telescope = parseInt(lines.shift());

const cases = parseInt(lines.shift());

let total = 0;

for (let cas = 0; cas < cases; cas++) {
  const photons = lines[cas];

  const result = photons * telescope;

  if (result >= 40000000) {
    total++;
  }
}

console.log(total);
