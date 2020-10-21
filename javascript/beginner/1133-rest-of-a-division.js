const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const x = Number(lines.shift());
const y = Number(lines.shift());

let [a, b] = x > y ? [y + 1, x - 1] : [x + 1, y - 1];

while(a <= b){
    if(a % 5 === 2 || a % 5 === 3) {
      console.log(a);
    }
    
    a++;
}
