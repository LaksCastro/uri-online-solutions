const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const n = Number(lines.shift());

for (let i = 0; i < n; i++) {
  const [a, b] = lines.shift().split(' ');

  console.log(a.endsWith(b) ? 'encaixa' : 'nao encaixa');
}
