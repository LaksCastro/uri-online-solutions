const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const casesLength = Number(lines.shift());

let include = 0;
let exclude = 0;

for (let caseIndex = 0; caseIndex < casesLength; caseIndex++) {
  const num = Number(lines.shift());
  if (num >= 10 && num <= 20) {
    include++;
  } else {
    exclude++;
  }
}

console.log(include + " in");
console.log(exclude + " out");
