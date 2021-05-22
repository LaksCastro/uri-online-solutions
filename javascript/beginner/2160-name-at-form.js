const input = require("fs").readFileSync("/dev/stdin", "utf8");
const name = input.split("\n")[0];

console.log(name.length > 80 ? "NO" : "YES");
