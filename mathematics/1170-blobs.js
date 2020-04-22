const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const cases = Number(lines.shift());

for (let cas = 0; cas < cases; cas++) {
  let kg = Number(lines.shift());

  let days = 0;

  for (; kg > 1; ) {
    days++;
    kg /= 2;
  }

  console.log(days + " dias");
}
