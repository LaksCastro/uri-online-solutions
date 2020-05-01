const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split("\n");

const qtd = Number(lines.shift());

let total = 0;

const menu = {
  "1001": 1.5,
  "1002": 2.5,
  "1003": 3.5,
  "1004": 4.5,
  "1005": 5.5
};

for (let i = 0; i < qtd; i++) {
  const item = lines.shift();
  const [cod, itemQtd] = item.split(" ").map(a => Number(a));
  total += menu[cod] * itemQtd;
}

console.log(total.toFixed(2));
