const input = require("fs").readFileSync("/dev/stdin", "utf8");
const lines = input.split("\n");

for (let n = lines.shift(); n !== null; n = lines.shift()) {
  for (let i = 1, digits = 1; true; i = (i * 10 + 1) % n, digits++) {
    if (i % n === 0) {
      console.log(digits);

      break;
    }
  }
}
//  POR ALGUM MOTIVO NÃO PASSA POR TIME LIMIT EXCEDED
