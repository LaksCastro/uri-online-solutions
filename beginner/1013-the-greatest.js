const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const numeros = lines.shift().split(" ").map(item => Number(item));
const maior = Math.max(...numeros);

console.log(`${maior} eh o maior`);
