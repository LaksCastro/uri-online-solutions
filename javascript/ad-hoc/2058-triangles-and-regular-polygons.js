const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const l = lines[0] - 2;

console.log(l);
