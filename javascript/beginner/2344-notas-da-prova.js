const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const nota = Number(lines.shift());

if (nota === 0) {
  console.log("E");
} else if (nota >= 1 && nota <= 35) {
  console.log("D");
} else if (nota > 35 && nota <= 60) {
  console.log("C");
} else if (nota > 61 && nota <= 85) {
  console.log("B");
} else if (nota > 85) {
  console.log("A");
}
