const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const correct = lines.shift();

console.log(lines[0].split(" ").filter((item) => item === correct).length);

