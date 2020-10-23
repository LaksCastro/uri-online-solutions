const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const cases = Number(lines.shift());

for (let x = 0; x < cases; x++) {
  const num = Number(lines.shift());

  let divisors = 0;

  for (let a = 1; a <= num; a++) {
    if (num % a === 0) {
      divisors++;
    }
        
    if (divisors > 2) {
      break;
    }
  }

  const message = num + (divisors === 2 ? " eh primo" : " nao eh primo");

  console.log(message);
}
