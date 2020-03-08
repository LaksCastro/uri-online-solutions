const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const [x1, y1] = lines.shift().split(" ").map(item => Number(item));
const [x2, y2] = lines.shift().split(" ").map(item => Number(item));

const distancia = Math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2);

console.log(distancia.toFixed(4));
