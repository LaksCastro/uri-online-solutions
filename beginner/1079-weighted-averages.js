const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const casesLength = Number(lines.shift());

for (let caseIndex = 0; caseIndex < casesLength; caseIndex++) {
  const [a, b, c] = lines.shift().split(" ").map(item => Number(item));
  
  const dividend = a * 2 + b * 3 + c * 5;
  const div = 10;
  
  const average =  dividend / div;
  const message = average.toFixed(1);
  
  console.log(message);
}
