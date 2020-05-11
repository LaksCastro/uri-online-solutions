const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const n = Number(lines.shift());

for (let a = 0, b = n; a < 10; a++, b *= 2) {
  console.log("N[" + a + "] = " + b);
}
