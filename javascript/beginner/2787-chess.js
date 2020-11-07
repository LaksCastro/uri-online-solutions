const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const l = lines[0];
const c = lines[1];

const isEven = (n) => n % 2 === 0;

console.log(+(isEven(l) === isEven(c)));
