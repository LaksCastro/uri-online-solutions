const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let p = 0;
let r = 0;

while (p < 3) {
  const inp = lines.shift().replace(/\*/g, '1').replace(/-/g, '0');

  if (inp === 'caw caw') {
    console.log(r);
    r = 0;
    p++;
  } else {
    r += parseInt(inp, 2);
  }
}
