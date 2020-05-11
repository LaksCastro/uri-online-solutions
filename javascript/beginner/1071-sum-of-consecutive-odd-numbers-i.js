const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const end = Number(lines.shift());
const init = Number(lines.shift());

let initialValue = init % 2 === 0 ? init + 1 : init + 2;
let finalValue = end % 2 === 0 ? end - 1 : end - 2;

let sum = 0;

while (initialValue <= finalValue) {
  sum += initialValue;
  initialValue += 2;
}

console.log(sum);
