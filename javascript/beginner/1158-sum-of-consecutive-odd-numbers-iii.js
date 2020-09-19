const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const cases = Number(lines.shift());

const isEven = n => n % 2 === 0;

for (let caseIndex = 0; caseIndex < cases; caseIndex++) {
  let [n, sequence] = lines.shift().split(" ").map(item => Number(item));

  if (isEven(n)) {
    n++;
  }

  let ac = n;

  let increment = 2;

  ac = n * sequence;

  for (let a = 0; a < sequence - 1; a++) {
    ac += increment;
    increment += 2;
  }

  console.log(ac);
}
