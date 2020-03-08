const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const filterFunction = () => Number(lines.shift()) > 0;

const entradas = Array.from({ length: 6 }).filter(filterFunction);

console.log(`${entradas.length} valores positivos`);
