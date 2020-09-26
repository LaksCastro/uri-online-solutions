const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const num = Number(lines.shift());

for (let i = 0; i < 10000; i++) {
  if (i % num === 2) {
    console.log(i);
  }
}
