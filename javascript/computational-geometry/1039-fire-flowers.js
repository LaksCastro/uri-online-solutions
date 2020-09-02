const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

function circle(r, x, y) {
  return { r, x, y };
}

function isIn(internal, external) {
  const distance = getDistance(internal.x, internal.y, external.x, external.y);
  
  return distance + internal.r <= external.r;
}

function getDistance(x1, y1, x2, y2) {
  return Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
}

for (const line of lines) {
  if (!line) {
    break;
  }

  const [r1, x1, y1, r2, x2, y2] = line.split(' ').map((n) => Number(n));

  const external = circle(r1, x1, y1);
  const internal = circle(r2, x2, y2);

  const dead = !isIn(internal, external);

  console.log(dead ? 'MORTO' : 'RICO');
}

