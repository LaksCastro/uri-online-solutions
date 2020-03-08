const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const inputArray = lines.shift().split(" ");

const numbers = inputArray.map(item => Number(item));
const numbersCopy = [...numbers];

numbers.sort((a, b) => a - b);

console.log(numbers.join("\n"));
console.log("");
console.log(numbersCopy.join("\n"));
