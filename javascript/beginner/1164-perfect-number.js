const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const casesLength = Number(lines.shift());

for (let caseIndex = 0; caseIndex < casesLength; caseIndex++) {
  const num = Number(lines.shift());

  let sum = 0;

  for (let a = 1; a < num; a++) {
    if (num % a === 0) {
      sum += a;
    }
  }

  const message = num + (sum === num ? " eh perfeito" : " nao eh perfeito");

  console.log(message);
}
