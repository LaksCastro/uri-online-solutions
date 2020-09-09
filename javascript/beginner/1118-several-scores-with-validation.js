const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const isValid = value => value <= 10 && value >= 0;

let getout = false;

let numA = null;
let numB = null;

while (!getout) {
  const num = Number(lines.shift());

  if (!isValid(num)) {
    console.log("nota invalida");
    continue;
  }

  if (numA === null) {
    numA = num;
    continue;
  }

  numB = num;

  const average = (numA + numB) / 2;
  
  let validResponse = false;
  
  numA = null;
  numB = null;
  
  console.log("media = " + average.toFixed(2));

  let response = null;
  
  do {
    console.log("novo calculo (1-sim 2-nao)");

    response = lines.shift();

    switch (response) {
      case "1":
        getout = false;
        break;
      case "2":
        getout = true;
        break;
    }
  } while (response !== "1" && response !== "2");
}
