const input = require("fs").readFileSync("/dev/stdin", "utf8");
const lines = input.split("\n");

const casesLength = Number(lines.shift());

for (let caseIndex = 0; caseIndex < casesLength; caseIndex++) {
  const string = lines.shift();
  
  const [a, b] = string.split(" ").map(item => Number(item));
  
  if (b === 0) {
    console.log("divisao impossivel");
  } else {
    console.log((a / b).toFixed(1));
  }
}
