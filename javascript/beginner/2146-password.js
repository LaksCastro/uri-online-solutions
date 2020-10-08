const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let getout = false;

while (!getout) {
  const a = Number(lines.shift());

  if (!a) {
    getout = true;
    
    break;
  }

  console.log(a - 1);
}
