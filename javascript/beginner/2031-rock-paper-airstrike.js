const input = require("fs").readFileSync("/dev/stdin", "utf8");
const lines = input.split("\n");

const n = Number(lines.shift());

const games = {
  "ataque.pedra": "Jogador 1 venceu",
  "ataque.papel": "Jogador 1 venceu",
  "ataque.ataque": "Aniquilacao mutua",
  "pedra.pedra": "Sem ganhador",
  "pedra.ataque": "Jogador 2 venceu",
  "pedra.papel": "Jogador 1 venceu",
  "papel.papel": "Ambos venceram",
  "papel.ataque": "Jogador 2 venceu",
  "papel.pedra": "Jogador 2 venceu",
};

for (var i = 0; i < n; i++) {
  const a = lines.shift();
  const b = lines.shift();

  console.log(games[`${a}.${b}`]);
}
