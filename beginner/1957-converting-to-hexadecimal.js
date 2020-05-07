const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const decimal = Number(lines.shift());

const hex = decimal.toString(16);

console.log(hex.toUpperCase());
