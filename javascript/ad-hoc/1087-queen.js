const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

while (lines.length) {
  const [x1, y1, x2, y2] = lines
    .shift()
    .split(' ')
    .map((e) => Number(e));

  if (x1 + y1 + x2 + y2 === 0) {
    break;
  }

  const diagonal = Math.abs(x1 - x2) == Math.abs(y1 - y2);

  console.log(
    x1 == x2 && y1 == y2 ? '0' : diagonal || x1 == x2 || y1 == y2 ? '1' : '2'
  );
}
