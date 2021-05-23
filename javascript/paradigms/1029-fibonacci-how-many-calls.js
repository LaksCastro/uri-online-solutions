const input = require("fs").readFileSync("/dev/stdin", "utf8");
const lines = input.split("\n");

const n = Number(lines.shift());

function fib(n, calls = 1) {
  if (n === 0 || n === 1) return [n, calls];

  const a = fib(n - 1, calls);
  const b = fib(n - 2, calls);

  return [a[0] + b[0], a[1] + b[1]];
}

for (let i = 0; i < n; i++) {
  const x = Number(lines.shift());

  const v = fib(x);

  const y = v[0];
  const c = v[1];

  console.log(`fib(${x}) = ${(c - 1) * 2} calls = ${y}`);
}
