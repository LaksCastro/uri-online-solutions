const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const distancia = Number(lines.shift());

console.log(`${distancia * 2} minutos`);
