const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const n = Number(lines.shift());

const phrase = "LIFE IS NOT A PROBLEM TO BE SOLVED";

console.log(phrase.substring(0, n));
