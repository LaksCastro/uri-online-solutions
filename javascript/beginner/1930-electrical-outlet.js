const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const result =
  lines[0].split(" ").reduce((ac, item) => Number(ac) + Number(item)) - 3;

console.log(result);
