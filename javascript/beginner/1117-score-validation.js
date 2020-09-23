const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const numbers = [];

let validNumbers = numbers.length === 2;

while (!validNumbers) {
    const num = Number(lines.shift());
    
    if (num >= 0 && num <= 10) {
      numbers.push(num);
    } else {
      console.log("nota invalida");
    }
    
    validNumbers = numbers.length === 2;
}

console.log("media = " + ((numbers[0] + numbers[1]) / 2));
