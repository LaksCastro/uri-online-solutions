const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const r = (x, y) => ({
  result: (3 * x) ** 2 + y ** 2,
  message: "Rafael ganhou"
});

const b = (x, y) => ({
  result: 2 * x ** 2 + (5 * y) ** 2,
  message: "Beto ganhou"
});

const c = (x, y) => ({
  result: -100 * x + y ** 3,
  message: "Carlos ganhou"
});

const cases = Number(lines.shift());

for (let cas = 0; cas < cases; cas++) {
  const args = lines
    .shift()
    .split(" ")
    .map(item => Number(item));

  const [winner] = [r(...args), b(...args), c(...args)].sort(
    (a, b) => b.result - a.result
  );

  console.log(winner.message);
}
