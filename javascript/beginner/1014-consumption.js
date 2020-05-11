const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const litros = Number(lines.shift());
const distancia = Number(lines.shift());

const media = (litros / distancia).toFixed(3);

const message = `${media} km/l`;

console.log(message);
