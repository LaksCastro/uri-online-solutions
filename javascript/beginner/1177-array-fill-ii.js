const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const qtdLines = Number(lines.shift());

for (let a = 0, b = 0; a < 1000; a++, b === qtdLines - 1 ? (b = 0) : b++) {
  console.log("N[" + a + "] = " + b);
}
