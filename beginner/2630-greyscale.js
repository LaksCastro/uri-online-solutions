const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const op = {
  eye: (r, g, b) => r * 0.3 + g * 0.59 + b * 0.11,
  mean: (r, g, b) => (r + g + b) / 3,
  max: (...color) => Math.max(...color),
  min: (...color) => Math.min(...color)
};

const cases = Number(lines.shift());

for (let caseIndex = 1; caseIndex <= cases; caseIndex++) {
  const operation = lines.shift();
  const color = lines.shift();

  const [r, g, b] = color.split(" ").map(cor => Number(cor));

  console.log("Caso #" + caseIndex + ": " + parseInt(op[operation](r, g, b)));
}
