const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const entrada = Number(lines.shift());
const foraDoIntervalo = entrada < 0 || entrada > 100;

if (foraDoIntervalo) {
  console.log("Fora de intervalo");
} else if (entrada >= 0 && entrada <= 25) {
  console.log("Intervalo [0,25]");
} else if (entrada > 25 && entrada <= 50) {
  console.log("Intervalo (25,50]");
} else if (entrada > 50 && entrada <= 75) {
  console.log("Intervalo (50,75]");
} else {
  console.log("Intervalo (75,100]");
}
