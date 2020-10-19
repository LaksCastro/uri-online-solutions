const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const [x, y] = lines.shift().split(" ").map(item => Number(item));

if (!x && !y) {
  console.log("Origem");
} else {
  if(!x) {
    console.log("Eixo Y");
  } else if(!y) {
    console.log("Eixo X");
  } else {
    if (x > 0 && y > 0) {
      console.log("Q1");
    } else if (x > 0 && y < 0){
      console.log("Q4")
    } else if (x < 0 && y > 0){
      console.log("Q2")
    } else if (x < 0 && y < 0){
      console.log("Q3")
    }
  }
}
