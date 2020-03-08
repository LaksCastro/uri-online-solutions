const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const pi = 3.14159;
const raio = Number(lines.shift());
const volume = (4 / 3) * pi * raio ** 3;

const mensagem = `VOLUME = ${volume.toFixed(3)}`;
console.log(mensagem);
