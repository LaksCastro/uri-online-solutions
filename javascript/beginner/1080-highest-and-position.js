const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let maior = 0;
let index = 0;

for (let i = 0; i < 100; i++) {
    const num = Number(lines.shift());
    if (num > maior) {
        maior = num;
        index = i + 1;
    }
}

console.log(maior);
console.log(index);
