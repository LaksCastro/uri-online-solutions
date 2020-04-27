const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const enumGame = [
  ["tesoura", "papel"],
  ["papel", "pedra"],
  ["pedra", "lagarto"],
  ["lagarto", "spock"],
  ["spock", "tesoura"],
  ["tesoura", "lagarto"],
  ["lagarto", "papel"],
  ["papel", "spock"],
  ["spock", "pedra"],
  ["pedra", "tesoura"]
];

const cases = Number(lines.shift());

for (let cas = 0; cas < cases; cas++) {
  const str = lines.shift();

  if (!str) break;

  const [p1, p2] = str.split(" ");

  if (p1 === p2) {
    console.log("empate");
  } else {
    for (const en of enumGame) {
      const [winner, loser] = en;

      if (winner === p1 && loser === p2) {
        console.log("rajesh");
        break;
      } else if (winner === p2 && loser === p1) {
        console.log("sheldon");
        break;
      }
    }
  }
}
