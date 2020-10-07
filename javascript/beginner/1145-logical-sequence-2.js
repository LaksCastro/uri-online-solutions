const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const string = lines.shift();

const [interval, max] = string.split(" ").map(item => Number(item));

for (let a = 1; a <= max; a += interval) {
  const initial = a;
  const final = a + interval;

  let currentString = "";

  for (let a = initial; a < final; a++) {
    if (a === final - 1) {
      currentString += a;
    } else {
      currentString += a + " ";
    }
  }
  
  console.log(currentString);
}
