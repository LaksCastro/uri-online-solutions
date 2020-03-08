const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const scan = Number(lines.shift());

const ano = Math.floor(scan / 365);
const mes = Math.floor((scan - ano * 365) / 30);
const dia = Math.floor(scan - ano * 365 - mes * 30);

console.log(`${ano} ano(s)`);
console.log(`${mes} mes(es)`);
console.log(`${dia} dia(s)`);
