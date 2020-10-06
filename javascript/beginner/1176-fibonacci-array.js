const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const cases = Number(lines.shift());

const fib = n => {
  if (n === 0) {
    return [0];
  }

  if (n === 1) {
    return [0, 1];
  }

  const s = fib(n - 1);
  
  s.push(s[s.length - 1] + s[s.length - 2]);
  
  return s;
};

for (let cas = 0; cas < cases; cas++) {
  const n = Number(lines[cas]);

  const sequence = fib(n);

  const lastValue = sequence[sequence.length - 1];

  console.log(`Fib(${n}) = ${lastValue}`);
}
