const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const pegarValores = (string) => string.split(" ").map(item => Number(item)).reverse();

const [qntPecas1, valorPorPeca1] = pegarValores(lines.shift());
const [qntPecas2, valorPorPeca2] = pegarValores(lines.shift());

const precoAPagar1 = qntPecas1 * valorPorPeca1;
const precoAPagar2 = qntPecas2 * valorPorPeca2;

console.log(`VALOR A PAGAR: R$ ${(precoAPagar1 + precoAPagar2).toFixed(2)}`);
