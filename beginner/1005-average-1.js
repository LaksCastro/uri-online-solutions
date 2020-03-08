const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const a = Number(lines.shift());
const b = Number(lines.shift());

const dividendo = a * 3.5 + b * 7.5;
const divisor = 11;

const media = dividendo / divisor;

const mensagem = `MEDIA = ${media.toFixed(5)}`;
console.log(mensagem);
