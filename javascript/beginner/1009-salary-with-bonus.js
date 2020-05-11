const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const nome = lines.shift();
const salario = Number(lines.shift());
const vendas = Number(lines.shift());

const comissao = vendas * 0.15;
const total = salario + comissao;

const mensagem = `TOTAL = R$ ${total.toFixed(2)}`;
console.log(mensagem);
