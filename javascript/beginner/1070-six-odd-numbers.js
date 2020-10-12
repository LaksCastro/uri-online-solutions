const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const num = Number(lines.shift());

let init = num % 2 === 0 ? num + 1 : num;

for (let i = 0; i < 6; i++) {
  console.log(init);
  
  init += 2;
}
