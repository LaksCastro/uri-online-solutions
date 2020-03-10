var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let numbers = [];

let pars = [];
let odds = [];

const caseLength = lines.shift();

for (let caseIndex = 0; caseIndex < caseLength; caseIndex++) {
  numbers[caseIndex] = lines.shift();
}
for (let i = 0; i < numbers.length; i++) {
  const currentNumber = numbers[i];
  if (currentNumber % 2 === 0) {
    pars.push(currentNumber);
  } else {
    odds.push(currentNumber);
  }
}
pars.sort((a, b) => a - b);
odds.sort((a, b) => b - a);

pars.forEach(item => {
  console.log(item);
});
odds.forEach(item => {
  console.log(item);
});
