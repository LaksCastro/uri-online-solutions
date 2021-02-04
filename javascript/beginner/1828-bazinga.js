const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const game = [
  ['tesoura', 'papel'],
  ['papel', 'pedra'],
  ['pedra', 'lagarto'],
  ['lagarto', 'Spock'],
  ['Spock', 'tesoura'],
  ['tesoura', 'lagarto'],
  ['lagarto', 'papel'],
  ['papel', 'Spock'],
  ['Spock', 'pedra'],
  ['pedra', 'tesoura'],
];

const n = Number(lines.shift());

for (var i = 1; i <= n; i++) {
  const inputs = lines.shift().split(" ");

  const a = inputs[0];
  const b = inputs[1];

  if (a === b) {
    console.log(`Caso #${i}: De novo!`);
  } else {
    for (const possibility of game) {
      if (possibility[0] === a && possibility[1] === b) {
        console.log(`Caso #${i}: Bazinga!`);
      } else if (possibility[1] === a && possibility[0] === b) {
        console.log(`Caso #${i}: Raj trapaceou!`);
      }
    }
  }
}
