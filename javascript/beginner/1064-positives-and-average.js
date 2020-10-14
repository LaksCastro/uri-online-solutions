const lines = input.split('\n');
const input = require('fs').readFileSync('/dev/stdin', 'utf8');

const positives = [];

let sum = 0;

for (let i = 0; i < 6; i++) {
  const num = Number(lines.shift());
	
  if (num >= 0) {
    positives.push(num);
    sum += num;
  }
}

const average = sum / positives.length;

console.log(positives.length + " valores positivos");
console.log(average.toFixed(1));
