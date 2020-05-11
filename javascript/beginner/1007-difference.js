const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const a = Number(lines.shift());
const b = Number(lines.shift());
const c = Number(lines.shift());
const d = Number(lines.shift());

const prodAB = a * b;
const prodCD = c * d;

const dif = prodAB - prodCD;

const mensagem = `DIFERENCA = ${dif}`;
console.log(mensagem);
