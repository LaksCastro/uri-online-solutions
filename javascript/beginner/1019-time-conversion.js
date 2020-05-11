const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let segundos = Number(lines.shift());
let minutos = Math.floor(segundos / 60);
segundos = segundos - minutos * 60;

let horas = Math.floor(minutos / 60);
minutos = minutos - horas * 60;

console.log(`${horas}:${minutos}:${segundos}`);
