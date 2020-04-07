const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const happiness = Number(lines.shift());

const _ = Array.from({ length: happiness })
  .map(() => "a")
  .join("");

const string = "Feliz nat" + _ + "l!";

console.log(string);
