const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const cases = Number(lines.shift());

for (let cas = 0; cas < cases; cas++) {
  const a = lines.shift().split("");

  const firstPart = a.length;

  const b = a.filter((_, i) => i <= firstPart / 2 - 1);
  const c = a.filter((_, i) => i > firstPart / 2 - 1);

  console.log(b.reverse().join("") + c.reverse().join(""));
}
