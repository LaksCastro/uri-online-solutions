const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const pi = 3.14159;
const r = lines.shift();
const area = pi * (r ** 2);

const message = `A=${area.toFixed(4)}`;
console.log(message);
