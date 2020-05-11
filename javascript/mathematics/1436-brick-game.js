const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let cases = Number(lines.shift());

for (let cas = 0; cas - cases; cas++) {
  const str = lines.shift();

  const ages = str
    .split(" ")
    .map(age => Number(age))
    .sort((a, b) => a - b);

  const cap = ages[Math.round(ages.length / 2)];

  console.log("Case " + (cas + 1) + ": " + cap);
}
