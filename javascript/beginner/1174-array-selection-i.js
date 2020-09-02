const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

for (let i = 0; i < 100; i++) {
  const current = Number(lines[i]);

  if (current > 10) {
    continue;
  }

  console.log(`A[${i}] = ${current.toFixed(1)}`);
}
