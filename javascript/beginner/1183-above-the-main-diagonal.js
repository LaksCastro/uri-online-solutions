const input = require("fs").readFileSync("/dev/stdin", "utf8");
const lines = input.split("\n");

const isSum = lines.shift() === "S";

const xL = 12,
  yL = 12;

let sum = 0.0,
  av = 0.0;

for (var y = 0; y < yL; y++) {
  for (var x = 0; x < xL; x++) {
    const i = Number(lines.shift());

    if (x > y) {
      sum += i;
      ++av;
    }
  }
}

console.log((sum / (isSum ? 1 : av)).toFixed("1"));
