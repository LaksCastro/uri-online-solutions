const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const num = Number(lines.shift());

for (let i = 1; i <= num * 4; i += 4) {
  console.log(`${i} ${i + 1} ${i + 2} PUM`);
}
