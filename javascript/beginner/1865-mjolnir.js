const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const n = Number(lines.shift());

for (let i = 0; i < n; i++) {
  const [name, newton] = lines.shift().split(" ");

  if (name === "Thor") console.log("Y");
  else console.log("N");
}

