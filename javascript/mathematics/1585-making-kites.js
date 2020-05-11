const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const cases = Number(lines.shift());

for (let cas = 0; cas < cases; cas++) {
  const str = lines.shift();

  const diam = str.split(" ").map(item => Number(item));

  const [d1, d2] = diam;

  const area = (d1 * d2) / 2;

  console.log(parseInt(area) + " cm2");
}
