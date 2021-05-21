const input = require("fs").readFileSync("/dev/stdin", "utf8");
const n = input.split("\n").map(Number);

for (let i = 0; i < 10; i++) {
  console.log(`X[${i}] = ${n[i] <= 0 ? 1 : n[i]}`);
}
