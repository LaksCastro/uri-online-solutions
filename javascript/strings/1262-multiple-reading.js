const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

while (true) {
  const str = lines.shift();

  if (!str) {
    break;
  }

  const process = lines.shift();

  const readRegex = new RegExp(`R{1,${process}}`, "g");

  const readMatches = str.match(readRegex);
  const writeMatches = str.match(/W/g);

  const r = readMatches ? readMatches.length : 0;
  const w = writeMatches ? writeMatches.length : 0;

  console.log(r + w);
}
