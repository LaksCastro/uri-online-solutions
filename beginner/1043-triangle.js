const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const inputArray = lines.shift().split(" ");
const [a, b, c] = inputArray.map(item => Number(item));

const isPossibleTriangle =
  a > Math.abs(b - c) &&
  a < b + c &&
  b > Math.abs(a - c) &&
  b < a + c &&
  c > Math.abs(a - b) &&
  c < a + b;

if (isPossibleTriangle) {
  const perimeter = a + b + c;
  const message = `Perimetro = ${perimeter.toFixed(1)}`;
  console.log(message);
} else {
  const area = ((a + b) * c) / 2;
  const message = `Area = ${area.toFixed(1)}`;
  console.log(message);
}
