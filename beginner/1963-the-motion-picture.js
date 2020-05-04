const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const str = lines.shift();

const [oldValue, newValue] = str.split(" ").map(value => Number(value));

const percentage = (newValue * 100) / oldValue;

const dif = percentage - 100;

console.log(`${dif.toFixed(2)}%`);
