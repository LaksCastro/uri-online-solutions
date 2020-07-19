const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const pi = 3.14159;
const r = Number(lines.shift());
const v = (4 / 3) * pi * r ** 3;

console.log(`VOLUME = ${v.toFixed(3)}`);
