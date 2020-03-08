const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const nota = Number(lines.shift());
const media = Number(lines.shift());

console.log(media * 2 - nota);
