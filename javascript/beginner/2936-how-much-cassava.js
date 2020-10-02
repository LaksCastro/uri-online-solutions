const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const guests = {
  "0": 300,
  "1": 1500,
  "2": 600,
  "3": 1000,
  "4": 150,
};

let total = 225;

for (let i = 0; i < 5; i++) {
  const qtd = lines.shift();
  
  total += guests[i] * qtd;
}

console.log(total);
