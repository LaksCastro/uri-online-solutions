const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let getout = false;

while (!getout) {
  const [a, b] = lines.shift().split(" ").map(item => Number(item));
  
  if (a <= 0 || b <= 0) {
    getout = true;
    break;
  }
  
  let [min, max] = a > b ? [b, a] : [a, b];

  let sum = 0;
  let string = "";

  for (; min <= max; min++) {
    sum += min;
    string += !string.length ? min : " " + min;
  }

  console.log(string + " Sum=" + sum);
}
