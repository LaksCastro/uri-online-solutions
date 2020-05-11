const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const a = Number(lines.shift());
const b = Number(lines.shift());
const c = Number(lines.shift());

const pesoA = a * 2;
const pesoB = b * 3;
const pesoC = c * 5;

const dividendo = pesoA + pesoB + pesoC;
const divisor = 10;

const media = dividendo / divisor;

console.log(`MEDIA = ${media.toFixed(1)}`);
