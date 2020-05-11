const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const entrada = lines.shift();

const [A, B, C] = entrada.split(" ").map(coef => Number(coef));

const delta = B * B - 4 * A * C;

const divisor = 2 * A;

if (!divisor || delta < 0) {
  console.log("Impossivel calcular");
} else {
  const x1 = (-B + Math.sqrt(delta)) / divisor;
  const x2 = (-B - Math.sqrt(delta)) / divisor;
  console.log(`R1 = ${x1.toFixed(5)}`);
  console.log(`R2 = ${x2.toFixed(5)}`);
}
