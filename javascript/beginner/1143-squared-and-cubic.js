const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const num = Number(lines.shift());

for (let i = 1; i <= num; i++) {
  const square = i * i;
  const cube = square * i;
  
  console.log(`${i} ${square} ${cube}`);
}
