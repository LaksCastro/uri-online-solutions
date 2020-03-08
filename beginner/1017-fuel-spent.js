const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const tempo = Number(lines.shift());
const velocidade = Number(lines.shift());

const distancia = tempo * velocidade;
const combustivel = distancia / 12;

console.log(combustivel.toFixed(3));
