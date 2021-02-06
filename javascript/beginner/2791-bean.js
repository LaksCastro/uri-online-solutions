const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

console.log(lines[0].split(' ').indexOf('1') + 1);
