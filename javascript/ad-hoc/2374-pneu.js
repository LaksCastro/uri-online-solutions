const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n').map(input => Number(input));

const targetPressure = lines[0];
const currrentPressure = lines[1];

console.log(targetPressure - currrentPressure);
