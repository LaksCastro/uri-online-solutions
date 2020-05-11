const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const a = Number(lines.shift());
const b = Number(lines.shift());

const soma = a + b;

const mensagem = `SOMA = ${soma}`;
console.log(mensagem);
