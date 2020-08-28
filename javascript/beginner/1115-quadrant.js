const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let getout = false;

while (!getout) {
  const string = lines.shift();
  
  const [x, y] = string.split(" ").map(item => Number(item));
  
  if (x === 0 || y === 0) {
    getout = true;
    break;
  } else {
    if(x > 0 && y > 0) {
      console.log("primeiro");
    } else if(x > 0 && y < 0) {
      console.log("quarto");
    } else if(x < 0 && y > 0) {
      console.log("segundo");
    } else if(x < 0 && y < 0) {
      console.log("terceiro");
    }
  }
}
