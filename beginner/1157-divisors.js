const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const num = Number(lines.shift());

for (let i = 1; i <= num; i++) {
  num % i === 0 && console.log(i);
}
