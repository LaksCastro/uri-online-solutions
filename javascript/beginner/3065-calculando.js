const input = require("fs").readFileSync("/dev/stdin", "utf8");
const lines = input.split("\n");

for (let i = 1; true; i++) {
  const n = Number(lines.shift());

  if (n === 0) break;

  const exp = lines.shift();

  const result = eval(exp);

  console.log(`Teste ${i}`);
  console.log(`${result}\n`);
}
