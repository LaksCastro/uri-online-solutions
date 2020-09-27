const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let getout = false;

while (!getout) {
  const [a, b] = lines.shift().split(" ").map(item => Number(item));

  if (a === b) {
    getout = true;
    break;
  } else if (a > b) {
    console.log("Decrescente");
  } else {
    console.log("Crescente");  
  } 
}
